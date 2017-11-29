import rospy
from sensor_msgs.msg import PointCloud2
from sensor_msgs import point_cloud2

cloud = [] # global variable to store the point cloud

def cloudCallback(msg):
    global cloud
    if len(cloud) == 0:
        for p in point_cloud2.read_points(msg):
            cloud.append([p[0], p[1], p[2]])


# Create a ROS node.
rospy.init_node('select_grasp')

# Subscribe to the ROS topic that contains the grasps.
cloud_sub = rospy.Subscriber('/cloud_pcd', PointCloud2, cloudCallback)

# Wait for point cloud to arrive.
while len(cloud) == 0:
    rospy.sleep(0.01)
