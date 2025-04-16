#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>
#include <visualization_msgs/Marker.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include <string>

// Global variables
ros::Publisher cmd_vel_pub;
ros::Publisher marker_pub;
double Kp_linear;
double Kp_angular;
double target_distance;

// Function to find the minimum distance in the laser scan data
void findMinDistance(const sensor_msgs::LaserScan::ConstPtr& scan, float& min_distance, int& min_index) {
    min_distance = scan->range_max;
    min_index = -1;
    for (int i = 0; i < scan->ranges.size(); i++) {
        if (scan->ranges[i] < min_distance) {
            min_distance = scan->ranges[i];
            min_index = i;
        }
    }
}

// Function to publish the velocity command
void publishVelocityCommand(double control_signal_linear, double control_signal_angular) {
    geometry_msgs::Twist cmd_vel_msg;
    cmd_vel_msg.linear.x = control_signal_linear;
    cmd_vel_msg.angular.z = control_signal_angular;
    cmd_vel_pub.publish(cmd_vel_msg);
}

// Function to publish visualization marker
void publishMarker(double pillar_x, double pillar_y) {
    visualization_msgs::Marker marker;
    marker.header.frame_id = "rslidar";
    marker.header.stamp = ros::Time::now();
    marker.ns = "pillar";
    marker.id = 0;
    marker.type = visualization_msgs::Marker::SPHERE;
    marker.action = visualization_msgs::Marker::ADD;
    marker.pose.position.x = pillar_x;
    marker.pose.position.y = pillar_y;
    marker.pose.position.z = 0;
    marker.pose.orientation.x = 0.0;
    marker.pose.orientation.y = 0.0;
    marker.pose.orientation.z = 0.0;
    marker.pose.orientation.w = 1.0;
    marker.scale.x = 0.2;
    marker.scale.y = 0.2;
    marker.scale.z = 0.2;
    marker.color.a = 1.0;
    marker.color.r = 0.0;
    marker.color.g = 1.0;
    marker.color.b = 0.0;
    marker_pub.publish(marker);
}

// Callback function for laser scan data
void laserScanCallback(const sensor_msgs::LaserScan::ConstPtr& scan) {
    float min_distance;
    int min_index;

    ROS_INFO("Received LaserScan with %lu ranges", scan->ranges.size());

    findMinDistance(scan, min_distance, min_index);

    if (min_index != -1) {
        // Calculate the angle of the pillar
        double angle = scan->angle_min + min_index * scan->angle_increment;

        // Calculate the position of the pillar
        double pillar_x = min_distance * cos(angle);
        double pillar_y = min_distance * sin(angle);

        // Implement a simple P controller for linear velocity
        double error_linear = target_distance - min_distance;
        double control_signal_linear = Kp_linear * error_linear;

        // Implement a simple P controller for angular velocity
        double control_signal_angular = Kp_angular * angle;

        // Publish the velocity command
        publishVelocityCommand(control_signal_linear, control_signal_angular);

        ROS_INFO("Pillar detected at: x=%.2f, y=%.2f, control_signal_linear=%.2f, control_signal_angular=%.2f", pillar_x, pillar_y, control_signal_linear, control_signal_angular);

        // Publish visualization marker
        publishMarker(pillar_x, pillar_y);
    } else {
        ROS_WARN("No valid pillar detected in the scan range");
    }
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "pillar_detection_node");
    ros::NodeHandle nh;

    // Load parameters
    nh.param("controller_gain_linear", Kp_linear, -0.2);
    nh.param("controller_gain_angular", Kp_angular, 1.0);
    nh.param("target_distance", target_distance, 1.0);

    // Set up the publishers
    cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
    marker_pub = nh.advertise<visualization_msgs::Marker>("visualization_marker", 1);

    // Set up the subscriber
    ros::Subscriber laser_scan_sub = nh.subscribe("/scan", 1, laserScanCallback);

    ROS_INFO("Pillar detection node started with Kp_linear=%.2f, Kp_angular=%.2f, and target_distance=%.2f", Kp_linear, Kp_angular, target_distance);

    ros::spin();
    return 0;
}
