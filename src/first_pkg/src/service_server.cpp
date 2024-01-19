#include "ros/ros.h"
#include "first_pkg/magnitude.h"

bool magnitudeCalculation(first_pkg::magnitude::Request &req, first_pkg::magnitude::Response &resp) {
    // Mengolah data request kedalam respon
    resp.magnitude = std::sqrt(req.komponenX * req.komponenX + req.komponenY * req.komponenY + req.komponenZ * req.komponenZ);

    // Mencetak hasil olahan data
    ROS_INFO("\nNilai komponen X: %lf", (float)req.komponenX);
    ROS_INFO("\nNilai komponen Y: %lf", (float)req.komponenY);
    ROS_INFO("\nNilai komponen Z: %lf", (float)req.komponenZ);
    ROS_INFO("\nMagnitude: %lf", (float)resp.magnitude);
    return true;
}

int main(int argc, char** argv) {
    // Inisialisasi Node
    ros::init(argc, argv, "service_server");

    // Inisialisasi Handler Node
    ros::NodeHandle nh;

    // Insialisasi Server dari Handler
    ros::ServiceServer server = nh.advertiseService("magnitude", magnitudeCalculation);
    ROS_INFO("Service Server ready to receive requests.");
    ros::spin();

    return 0;
}
