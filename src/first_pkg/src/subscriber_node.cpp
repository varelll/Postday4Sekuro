#include "ros/ros.h"
#include "first_pkg/Pesan1.h"

void callbackHandler(const first_pkg::Pesan1::ConstPtr &msg) {
    // Mencetak pesan yang diterima
    ROS_INFO("Received message:\nUsia: %ld\nTinggi: %lf\nNama: %s\nKehadiran: %s",
             msg->usia, msg->tinggi, msg->nama.c_str(), msg->kehadiran ? "true" : "false");
}

int main(int argc, char ** argv){
    // Inisialisasi Node
    ros::init(argc,argv,"subscriber_node_cpp");

    // Inisialisasi Handler Node
    ros::NodeHandle nh;

    // Insialisasi Subscriber dari Handler
    ros::Subscriber data_subscriber = nh.subscribe("topik1",1000,callbackHandler);

    ros::spin();

    return 0;
}