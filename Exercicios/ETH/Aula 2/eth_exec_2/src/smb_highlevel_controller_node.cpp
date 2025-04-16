#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <algorithm>

void scanCallback(const sensor_msgs::LaserScan::ConstPtr &msg){
    auto min_element = std::min_element(msg->ranges.begin(), msg->ranges.end());
    ROS_INFO("Distancia Minima: %f", *min_element);
}

int main(int argc, char** argv){
    ros::init(argc, argv, "smb_highlevel_controller");
    ros::NodeHandle nh;

    std::string topic;
    int queue_size;
    nh.getParam("scan_topic", topic);
    nh.getParam("queue_size", queue_size);

    ros::Subscriber sub = nh.subscribe(topic, queue_size, scanCallback);
    ros::spin();
    return 0;
}