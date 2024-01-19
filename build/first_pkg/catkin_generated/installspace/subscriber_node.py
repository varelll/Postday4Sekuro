#!/usr/bin/env python3
import rospy
from first_pkg.msg import Pesan1

def callback(data):
    # Mencetak pesan yang diterima
    rospy.loginfo("Usia: %ld" % data.usia)
    rospy.loginfo("Tinggi: %lf" % data.tinggi)
    rospy.loginfo("Nama: %s" % data.nama)
    rospy.loginfo("Kehadiran: %s" % data.kehadiran)

def listener():
    # Inisialisasi Node
    rospy.init_node("subscriber_node",anonymous=True)

    # Inisialisasi Subscriber
    rospy.Subscriber("topik1_python",Pesan1,callback)

    rospy.spin()

if __name__ == "__main__":
    listener()