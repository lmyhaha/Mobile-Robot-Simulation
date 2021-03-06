// Generated by gencpp from file sc_msgs/robot_state.msg
// DO NOT EDIT!


#ifndef SC_MSGS_MESSAGE_ROBOT_STATE_H
#define SC_MSGS_MESSAGE_ROBOT_STATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace sc_msgs
{
template <class ContainerAllocator>
struct robot_state_
{
  typedef robot_state_<ContainerAllocator> Type;

  robot_state_()
    : header()
    , system_time(0.0)
    , cpu_temperature(0.0)
    , cpu_usage(0.0)
    , battery_voltage(0.0)  {
    }
  robot_state_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , system_time(0.0)
    , cpu_temperature(0.0)
    , cpu_usage(0.0)
    , battery_voltage(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _system_time_type;
  _system_time_type system_time;

   typedef double _cpu_temperature_type;
  _cpu_temperature_type cpu_temperature;

   typedef double _cpu_usage_type;
  _cpu_usage_type cpu_usage;

   typedef double _battery_voltage_type;
  _battery_voltage_type battery_voltage;





  typedef boost::shared_ptr< ::sc_msgs::robot_state_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sc_msgs::robot_state_<ContainerAllocator> const> ConstPtr;

}; // struct robot_state_

typedef ::sc_msgs::robot_state_<std::allocator<void> > robot_state;

typedef boost::shared_ptr< ::sc_msgs::robot_state > robot_statePtr;
typedef boost::shared_ptr< ::sc_msgs::robot_state const> robot_stateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sc_msgs::robot_state_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sc_msgs::robot_state_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sc_msgs': ['/home/mustar/kinematics_ws/src/sc_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sc_msgs::robot_state_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sc_msgs::robot_state_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sc_msgs::robot_state_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sc_msgs::robot_state_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sc_msgs::robot_state_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sc_msgs::robot_state_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sc_msgs::robot_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27b5aae4f913dc2a48ec86b4edb661a3";
  }

  static const char* value(const ::sc_msgs::robot_state_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27b5aae4f913dc2aULL;
  static const uint64_t static_value2 = 0x48ec86b4edb661a3ULL;
};

template<class ContainerAllocator>
struct DataType< ::sc_msgs::robot_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sc_msgs/robot_state";
  }

  static const char* value(const ::sc_msgs::robot_state_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sc_msgs::robot_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
float64  system_time\n\
float64  cpu_temperature\n\
float64  cpu_usage\n\
float64  battery_voltage\n\
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
";
  }

  static const char* value(const ::sc_msgs::robot_state_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sc_msgs::robot_state_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.system_time);
      stream.next(m.cpu_temperature);
      stream.next(m.cpu_usage);
      stream.next(m.battery_voltage);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_state_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sc_msgs::robot_state_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sc_msgs::robot_state_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "system_time: ";
    Printer<double>::stream(s, indent + "  ", v.system_time);
    s << indent << "cpu_temperature: ";
    Printer<double>::stream(s, indent + "  ", v.cpu_temperature);
    s << indent << "cpu_usage: ";
    Printer<double>::stream(s, indent + "  ", v.cpu_usage);
    s << indent << "battery_voltage: ";
    Printer<double>::stream(s, indent + "  ", v.battery_voltage);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SC_MSGS_MESSAGE_ROBOT_STATE_H
