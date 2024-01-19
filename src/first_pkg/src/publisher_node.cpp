#include "ros/ros.h"
#include "first_pkg/Pesan1.h"

int main(int argc, char **argv) {
     // Inisialisasi Node
    ros::init(argc, argv, "publisher_node_cpp");

     // Inisialisasi Handler Node
    ros::NodeHandle nh;

     // Insialisasi Publisher dari Handler
    ros::Publisher data_publisher = nh.advertise<first_pkg::Pesan1>("topik1", 1000);

     // Rate pengiriman pesan sebesar 1hz (1 pesan setiap detik)
    ros::Rate loop_rate(1);

     // ros:: ok() menyatakan true jika file ini di run. false jika file file ini dimatikan atau roscore dimatikan
     while (ros::ok()) {

       // Variabel dengan tipe msg yang ditentukan
       first_pkg::Pesan1 dataVariabel;

       // Pemberian nama terhadap masing-masing data didalam variabel
       dataVariabel.usia = 18;
       dataVariabel.tinggi = 170.5;
       dataVariabel.nama = "Varel Tiara";
       dataVariabel.kehadiran = true;

       // Mencetak hasil variabel kedalam console publisher_node.cpp
       ROS_INFO("\nUsia: %ld\nTinggi: %lf\nNama: %s\nKehadiran: %s",dataVariabel.usia, dataVariabel.tinggi,dataVariabel.nama.c_str(), dataVariabel.kehadiran ? "true" : "false");

       // Mengirim variabel kedalam topik "topik_utama"
       data_publisher.publish(dataVariabel);

       ros::spinOnce();
       loop_rate.sleep();
   }
   return 0;
}

