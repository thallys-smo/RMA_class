#include "ros/ros.h"
#include "std_msgs/String.h"

class Subscriber {

    public:
        Subscriber() {
            // Constructor that initializes the subscription
            sub = n.subscribe("Conversa_class", 1000, &Subscriber::chatterCallback, this);
        }

        void chatterCallback(const std_msgs::String::ConstPtr& msg) {
            // Callback function to handle incoming messages
            ROS_INFO("I heard: [%s]", msg->data.c_str());
        }

        void spin() {
            // Enters a loop, calling message callbacks as fast as possible
            ros::spin();
        }    

    private:
        ros::NodeHandle n;        // Node handle to manage this node's resources.
        ros::Subscriber sub;      // ROS subscriber object.
    };
// The main function: the entry point of any C++ program.
int main(int argc, char **argv)
{
    // Initialize the ROS system with the name of this node, "Subscriber".
    ros::init(argc, argv, "Subscriber_class");

    // Create an object of the Subscriber class.
    Subscriber subscriber;

    // Start the ROS event loop.
    subscriber.spin();

    return 0;
}
