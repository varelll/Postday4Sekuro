#include "ros/ros.h"
#include "first_pkg/magnitude.h"

int main(int argc, char** argv) {
    // Inisialisasi 
    ros::init(argc, argv, "service_client");

    // Inisialisasi Handler Node
    ros::NodeHandle nh;

    // Inisialisasi client dari handler
    ros::ServiceClient client = nh.serviceClient<first_pkg::magnitude>("magnitude");

    // Inisialisasi variabel sesuai tipe data srv
    first_pkg::magnitude dataVariabel;

    // Memberi nilai kepada seluruh data request
    dataVariabel.request.komponenX = 10;
    dataVariabel.request.komponenY = 12;
    dataVariabel.request.komponenZ = 15;

    if (client.call(dataVariabel)) {
        ROS_INFO("Magnitude yang dicari adalah: %lf", dataVariabel.response.magnitude);
    } else {
        ROS_INFO("Service gagal dipanggil");
    }

    ros::spin(); // Keep the node alive

    return 0;
}
