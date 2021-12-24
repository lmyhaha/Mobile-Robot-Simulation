// Generated by gencpp from file gazebo_msgs/WorldState.msg
// DO NOT EDIT!


#ifndef GAZEBO_MSGS_MESSAGE_WORLDSTATE_H
#define GAZEBO_MSGS_MESSAGE_WORLDSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Wrench.h>

namespace gazebo_msgs
{
template <class ContainerAllocator>
struct WorldState_
{
  typedef WorldState_<ContainerAllocator> Type;

  WorldState_()
    : header()
    , name()
    , pose()
    , twist()
    , wrench()  {
    }
  WorldState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , pose(_alloc)
    , twist(_alloc)
    , wrench(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _name_type;
  _name_type name;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _pose_type;
  _pose_type pose;

   typedef std::vector< ::geometry_msgs::Twist_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Twist_<ContainerAllocator> >::other >  _twist_type;
  _twist_type twist;

   typedef std::vector< ::geometry_msgs::Wrench_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Wrench_<ContainerAllocator> >::other >  _wrench_type;
  _wrench_type wrench;





  typedef boost::shared_ptr< ::gazebo_msgs::WorldState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_msgs::WorldState_<ContainerAllocator> const> ConstPtr;

}; // struct WorldState_

typedef ::gazebo_msgs::WorldState_<std::allocator<void> > WorldState;

typedef boost::shared_ptr< ::gazebo_msgs::WorldState > WorldStatePtr;
typedef boost::shared_ptr< ::gazebo_msgs::WorldState const> WorldStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_msgs::WorldState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_msgs::WorldState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gazebo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'gazebo_msgs': ['/home/mustar/kinematics_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::WorldState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::WorldState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::WorldState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::WorldState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::WorldState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::WorldState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_msgs::WorldState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de1a9de3ab7ba97ac0e9ec01a4eb481e";
  }

  static const char* value(const ::gazebo_msgs::WorldState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde1a9de3ab7ba97aULL;
  static const uint64_t static_value2 = 0xc0e9ec01a4eb481eULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_msgs::WorldState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_msgs/WorldState";
  }

  static const char* value(const ::gazebo_msgs::WorldState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_msgs::WorldState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This is a message that holds data necessary to reconstruct a snapshot of the world\n\
#\n\
# = Approach to Message Passing =\n\
# The state of the world is defined by either\n\
#   1. Inertial Model pose, twist\n\
#      * kinematic data - connectivity graph from Model to each Link\n\
#      * joint angles\n\
#      * joint velocities\n\
#      * Applied forces - Body wrench\n\
#        * relative transform from Body to each collision Geom\n\
# Or\n\
#   2. Inertial (absolute) Body pose, twist, wrench\n\
#      * relative transform from Body to each collision Geom - constant, so not sent over wire\n\
#      * back compute from canonical body info to get Model pose and twist.\n\
#\n\
# Chooing (2.) because it matches most physics engines out there\n\
#   and is simpler.\n\
#\n\
# = Future =\n\
# Consider impacts on using reduced coordinates / graph (parent/child links) approach\n\
#   constraint and physics solvers.\n\
#\n\
# = Application =\n\
# This message is used to do the following:\n\
#   * reconstruct the world and objects for sensor generation\n\
#   * stop / start simulation - need pose, twist, wrench of each body\n\
#   * collision detection - need pose of each collision geometry.  velocity/acceleration if\n\
#\n\
# = Assumptions =\n\
# Assuming that each (physics) processor node locally already has\n\
#   * collision information - Trimesh for Geoms, etc\n\
#   * relative transforms from Body to Geom - this is assumed to be fixed, do not send oved wire\n\
#   * inertial information - does not vary in time\n\
#   * visual information - does not vary in time\n\
#\n\
\n\
Header header\n\
\n\
string[] name\n\
geometry_msgs/Pose[] pose\n\
geometry_msgs/Twist[] twist\n\
geometry_msgs/Wrench[] wrench\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Wrench\n\
# This represents force in free space, separated into\n\
# its linear and angular parts.\n\
Vector3  force\n\
Vector3  torque\n\
";
  }

  static const char* value(const ::gazebo_msgs::WorldState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_msgs::WorldState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.pose);
      stream.next(m.twist);
      stream.next(m.wrench);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WorldState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_msgs::WorldState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_msgs::WorldState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name[i]);
    }
    s << indent << "pose[]" << std::endl;
    for (size_t i = 0; i < v.pose.size(); ++i)
    {
      s << indent << "  pose[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.pose[i]);
    }
    s << indent << "twist[]" << std::endl;
    for (size_t i = 0; i < v.twist.size(); ++i)
    {
      s << indent << "  twist[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "    ", v.twist[i]);
    }
    s << indent << "wrench[]" << std::endl;
    for (size_t i = 0; i < v.wrench.size(); ++i)
    {
      s << indent << "  wrench[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Wrench_<ContainerAllocator> >::stream(s, indent + "    ", v.wrench[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_MSGS_MESSAGE_WORLDSTATE_H
