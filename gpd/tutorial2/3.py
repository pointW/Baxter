# Publish point cloud and nonplanar indices.
from gpd.msg import CloudIndexed
from std_msgs.msg import Header, Int64
from geometry_msgs.msg import Point

pub = rospy.Publisher('cloud_indexed', CloudIndexed, queue_size=1)

msg = CloudIndexed()
header = Header()
header.frame_id = "/base_link"
header.stamp = rospy.Time.now()
msg.cloud_sources.cloud = point_cloud2.create_cloud_xyz32(header, cloud.tolist())
msg.cloud_sources.view_points.append(Point(0,0,0))
for i in xrange(cloud.shape[0]):
    msg.cloud_sources.camera_source.append(Int64(0))
for i in idx[0]:
    msg.indices.append(Int64(i))    
s = raw_input('Hit [ENTER] to publish')
pub.publish(msg)
rospy.sleep(2)
print 'Published cloud with', len(msg.indices), 'indices'
