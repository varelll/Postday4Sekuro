#!/usr/bin/env python3

import rospy
from first_pkg.srv import magnitude,magnitudeResponse
import math

def magnitude_calculation(req):
    # Mengolah & mencetak data
    magnitude = math.sqrt(req.komponenX**2 + req.komponenY**2 + req.komponenZ**2)
    rospy.loginfo("Received request: Komponen X=%f, Komponen Y=%f, Komponen Z=%f" % (req.komponenX, req.komponenY, req.komponenZ))
    rospy.loginfo("Returning magnitude: %f" % magnitude)
    return magnitudeResponse(magnitude)

def service_server():
    # Inisialisasi Node
    rospy.init_node("service_server")
    
    # Insialisasi Server
    s = rospy.Service('magnitude_calculation_python',magnitude,magnitude_calculation)
    rospy.loginfo("Magnitude Calculation Server is ready.")
    rospy.spin()

if __name__ == '__main__':
    service_server()