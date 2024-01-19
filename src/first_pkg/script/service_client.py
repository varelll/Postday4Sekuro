#!/usr/bin/env python3

import rospy
from first_pkg.srv import magnitude, magnitudeResponse

def magnitude_calculation_client(komponenX, komponenY, komponenZ):
    # Inisialisasi Node
    rospy.init_node("service_client")

    rospy.wait_for_service("magnitude_calculation_python")
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        try:
            # Inisialisasi Client
            mag_calculation = rospy.ServiceProxy('magnitude_calculation_python',magnitude)
            response = mag_calculation(komponenX, komponenY, komponenZ)

            # Mencetak hasil response
            rospy.loginfo("Received response: Magnitude = %f", response.magnitude)
            rate.sleep()
        except rospy.ServiceException as e:
            print("Service call failed %s",e)

if __name__ == '__main__':
    magnitude_calculation_client(10,12,15)