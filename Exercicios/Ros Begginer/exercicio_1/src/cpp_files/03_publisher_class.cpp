// Include ROS header file for using ROS functionalities.
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

// Define a class named Publisher.
class Publisher {
    public:
        Publisher(): loop_rate(10), count(0) // Initialize loop_rate to 10 Hz and count to 0.
        {
            // Advertise the topic we will be publishing to.
            pub = n.advertise<std_msgs::String>("Conversa_class", 1000);
        }
        void run() {
            while (ros::ok()) {
                std_msgs::String msg;

                // Use a string stream to construct the data for the message.
                std::stringstream ss;
                ss << "hello world " << count;

                // Assign the string stream to the message's data.
                msg.data = ss.str();

                // Log the message data to the ROS console.
                ROS_INFO("%s", msg.data.c_str());

                // Publish the message to the "Conversa" topic.
                pub.publish(msg);

                // Handle ROS events and callbacks.
                ros::spinOnce();

                // Sleep for the remainder of the loop rate.
                loop_rate.sleep();

                // Increment the count for the next message.
                ++count;
            }
        }

    private:
        ros::NodeHandle n;                  // Node handle to manage this node's resources.
        ros::Publisher pub;         // ROS publisher object.
        ros::Rate loop_rate;                // Rate object to control the loop frequency.
        int count;                          // Variable to count the number of messages sent.
};

// The main function: the entry point of any C++ program.
int main(int argc, char **argv)
{
    // Initialize the ROS system with the name of this node, "Publisher".
    ros::init(argc, argv, "Publisher_class");

    // Create an object of the Publisher class.
    Publisher publisher;

    // Call the run method to start the publishing loop.
    publisher.run();

    return 0;
}
