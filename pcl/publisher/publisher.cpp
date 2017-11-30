#include <pcl/point_types.h>
#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include "../cluster/cluster_extraction.cpp"


typedef pcl::PointCloud<pcl::PointXYZRGB> PointCloud;

int main(int argc, char** argv)
{
  ros::init (argc, argv, "pub_pcl");
  ros::NodeHandle nh;
  ros::Publisher pub = nh.advertise<PointCloud> ("points2", 1);
  
  std::vector<pcl::PointCloud<pcl::PointXYZRGB>::Ptr> targets = getCluster();
  PointCloud::Ptr msg = targets.at(1);
  
  ros::Rate loop_rate(4);
  while (nh.ok())
  {
    msg->header.stamp = ros::Time::now().toNSec();
    pub.publish (msg);
    ros::spinOnce ();
    loop_rate.sleep ();
  }
  return 0;
}
