// Generated by gencpp from file sc_msgs/SetParamList.msg
// DO NOT EDIT!


#ifndef SC_MSGS_MESSAGE_SETPARAMLIST_H
#define SC_MSGS_MESSAGE_SETPARAMLIST_H

#include <ros/service_traits.h>


#include <sc_msgs/SetParamListRequest.h>
#include <sc_msgs/SetParamListResponse.h>


namespace sc_msgs
{

struct SetParamList
{

typedef SetParamListRequest Request;
typedef SetParamListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetParamList
} // namespace sc_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sc_msgs::SetParamList > {
  static const char* value()
  {
    return "6452acbcabbd3d0394d0e8b1c714d527";
  }

  static const char* value(const ::sc_msgs::SetParamList&) { return value(); }
};

template<>
struct DataType< ::sc_msgs::SetParamList > {
  static const char* value()
  {
    return "sc_msgs/SetParamList";
  }

  static const char* value(const ::sc_msgs::SetParamList&) { return value(); }
};


// service_traits::MD5Sum< ::sc_msgs::SetParamListRequest> should match 
// service_traits::MD5Sum< ::sc_msgs::SetParamList > 
template<>
struct MD5Sum< ::sc_msgs::SetParamListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sc_msgs::SetParamList >::value();
  }
  static const char* value(const ::sc_msgs::SetParamListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sc_msgs::SetParamListRequest> should match 
// service_traits::DataType< ::sc_msgs::SetParamList > 
template<>
struct DataType< ::sc_msgs::SetParamListRequest>
{
  static const char* value()
  {
    return DataType< ::sc_msgs::SetParamList >::value();
  }
  static const char* value(const ::sc_msgs::SetParamListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sc_msgs::SetParamListResponse> should match 
// service_traits::MD5Sum< ::sc_msgs::SetParamList > 
template<>
struct MD5Sum< ::sc_msgs::SetParamListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sc_msgs::SetParamList >::value();
  }
  static const char* value(const ::sc_msgs::SetParamListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sc_msgs::SetParamListResponse> should match 
// service_traits::DataType< ::sc_msgs::SetParamList > 
template<>
struct DataType< ::sc_msgs::SetParamListResponse>
{
  static const char* value()
  {
    return DataType< ::sc_msgs::SetParamList >::value();
  }
  static const char* value(const ::sc_msgs::SetParamListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SC_MSGS_MESSAGE_SETPARAMLIST_H
