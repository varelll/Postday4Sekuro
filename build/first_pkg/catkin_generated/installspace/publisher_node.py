#!/usr/bin/env python3

import rospy
from first_pkg.msg import Pesan1

def talker():
    # Inisialisasi Publisher
    message_pub = rospy.Publisher("topik1_python", Pesan1, queue_size=10)

    # Inisialisasi Node
    rospy.init_node('publisher_node',anonymous=True)

    # Rate pengiriman pesan sebesar 1hz (1 pesan setiap detik)
    rate = rospy.Rate(1)

    # rospy.is_shutdown() sama aja seperti ros::ok()
    while not rospy.is_shutdown():

        # Variabel dengan tipe msg yang telah ditentukan
        dataVariabel = Pesan1()

        # Pemberian nama terhadap masing-masing data didalam variabel
        dataVariabel.usia = 18
        dataVariabel.tinggi = 170.5
        dataVariabel.nama = "Varel Tiara"
        dataVariabel.kehadiran = True

        # Mencetak hasil variabel kedalam console publisher.py
        rospy.loginfo("\nUsia: %ld" % dataVariabel.usia)
        rospy.loginfo("Tinggi: %lf" % dataVariabel.tinggi)
        rospy.loginfo("Nama: %s" % dataVariabel.nama)
        rospy.loginfo("Kehadiran: %s" % dataVariabel.kehadiran)

        # Mengirim variabel kedalam topik "topik_utama_python"
        message_pub.publish(dataVariabel)

        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass