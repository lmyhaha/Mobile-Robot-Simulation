// Generated by gencpp from file gazebo_msgs/GetJointPropertiesResponse.msg
// DO NOT EDIT!


#ifndef GAZEBO_MSGS_MESSAGE_GETJOINTPROPERTIESRESPONSE_H
#define GAZEBO_MSGS_MESSAGE_GETJOINTPROPERTIESRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gazebo_msgs
{
template <class ContainerAllocator>
struct GetJointPropertiesResponse_
{
  typedef GetJointPropertiesResponse_<ContainerAllocator> Type;

  GetJointPropertiesResponse_()
    : type(0)
    , damping()
    , position()
    , rate()
    , success(false)
    , status_message()  {
    }
  GetJointPropertiesResponse_(const ContainerAllocator& _alloc)
    : type(0)
    , damping(_alloc)
    , position(_alloc)
    , rate(_alloc)
    , success(false)
    , status_message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _type_type;
  _type_type type;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _damping_type;
  _damping_type damping;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _position_type;
  _position_type position;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _rate_type;
  _rate_type rate;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_message_type;
  _status_message_type status_message;



  enum {
    REVOLUTE = 0u,
    CONTINUOUS = 1u,
    PRISMATIC = 2u,
    FIXED = 3u,
    BALL = 4u,
    UNIVERSAL = 5u,
  };


  typedef boost::shared_ptr< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetJointPropertiesResponse_

typedef ::gazebo_msgs::GetJointPropertiesResponse_<std::allocator<void> > GetJointPropertiesResponse;

typedef boost::shared_ptr< ::gazebo_msgs::GetJointPropertiesResponse > GetJointPropertiesResponsePtr;
typedef boost::shared_ptr< ::gazebo_msgs::GetJointPropertiesResponse const> GetJointPropertiesResponseConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gazebo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'gazebo_msgs': ['/home/mustar/kinematics_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cd7b30a39faa372283dc94c5f6457f82";
  }

  static const char* value(const ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcd7b30a39faa3722ULL;
  static const uint64_t static_value2 = 0x83dc94c5f6457f82ULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_msgs/GetJointPropertiesResponse";
  }

  static const char* value(const ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
uint8 type\n\
uint8 REVOLUTE    = 0\n\
uint8 CONTINUOUS  = 1\n\
uint8 PRISMATIC   = 2\n\
uint8 FIXED       = 3\n\
uint8 BALL        = 4\n\
uint8 UNIVERSAL   = 5\n\
\n\
float64[] damping\n\
\n\
float64[] position\n\
float64[] rate\n\
\n\
bool success\n\
string status_message\n\
\n\
";
  }

  static const char* value(const ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.damping);
      stream.next(m.position);
      stream.next(m.rate);
      stream.next(m.success);
      stream.next(m.status_message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetJointPropertiesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_msgs::GetJointPropertiesResponse_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "damping[]" << std::endl;
    for (size_t i = 0; i < v.damping.size(); ++i)
    {
      s << indent << "  damping[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.damping[i]);
    }
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.position[i]);
    }
    s << indent << "rate[]" << std::endl;
    for (size_t i = 0; i < v.rate.size(); ++i)
    {
      s << indent << "  rate[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.rate[i]);
    }
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "status_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status_message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_MSGS_MESSAGE_GETJOINTPROPERTIESRESPONSE_H
