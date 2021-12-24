// Generated by gencpp from file sc_msgs/vision_rect.msg
// DO NOT EDIT!


#ifndef SC_MSGS_MESSAGE_VISION_RECT_H
#define SC_MSGS_MESSAGE_VISION_RECT_H


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
struct vision_rect_
{
  typedef vision_rect_<ContainerAllocator> Type;

  vision_rect_()
    : header()
    , topleft_x(0)
    , topleft_y(0)
    , bottomright_x(0)
    , bottomright_y(0)  {
    }
  vision_rect_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , topleft_x(0)
    , topleft_y(0)
    , bottomright_x(0)
    , bottomright_y(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _topleft_x_type;
  _topleft_x_type topleft_x;

   typedef int16_t _topleft_y_type;
  _topleft_y_type topleft_y;

   typedef int16_t _bottomright_x_type;
  _bottomright_x_type bottomright_x;

   typedef int16_t _bottomright_y_type;
  _bottomright_y_type bottomright_y;





  typedef boost::shared_ptr< ::sc_msgs::vision_rect_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sc_msgs::vision_rect_<ContainerAllocator> const> ConstPtr;

}; // struct vision_rect_

typedef ::sc_msgs::vision_rect_<std::allocator<void> > vision_rect;

typedef boost::shared_ptr< ::sc_msgs::vision_rect > vision_rectPtr;
typedef boost::shared_ptr< ::sc_msgs::vision_rect const> vision_rectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sc_msgs::vision_rect_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sc_msgs::vision_rect_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::sc_msgs::vision_rect_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sc_msgs::vision_rect_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sc_msgs::vision_rect_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sc_msgs::vision_rect_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sc_msgs::vision_rect_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sc_msgs::vision_rect_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sc_msgs::vision_rect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d08a8c46c56e7512e9950c75e9513e0c";
  }

  static const char* value(const ::sc_msgs::vision_rect_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd08a8c46c56e7512ULL;
  static const uint64_t static_value2 = 0xe9950c75e9513e0cULL;
};

template<class ContainerAllocator>
struct DataType< ::sc_msgs::vision_rect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sc_msgs/vision_rect";
  }

  static const char* value(const ::sc_msgs::vision_rect_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sc_msgs::vision_rect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
int16 topleft_x\n\
int16 topleft_y\n\
int16 bottomright_x\n\
int16 bottomright_y\n\
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

  static const char* value(const ::sc_msgs::vision_rect_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sc_msgs::vision_rect_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.topleft_x);
      stream.next(m.topleft_y);
      stream.next(m.bottomright_x);
      stream.next(m.bottomright_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct vision_rect_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sc_msgs::vision_rect_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sc_msgs::vision_rect_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "topleft_x: ";
    Printer<int16_t>::stream(s, indent + "  ", v.topleft_x);
    s << indent << "topleft_y: ";
    Printer<int16_t>::stream(s, indent + "  ", v.topleft_y);
    s << indent << "bottomright_x: ";
    Printer<int16_t>::stream(s, indent + "  ", v.bottomright_x);
    s << indent << "bottomright_y: ";
    Printer<int16_t>::stream(s, indent + "  ", v.bottomright_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SC_MSGS_MESSAGE_VISION_RECT_H
