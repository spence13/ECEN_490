// Generated by gencpp from file christiauto_robaldo/PIDInfo.msg
// DO NOT EDIT!


#ifndef CHRISTIAUTO_ROBALDO_MESSAGE_PIDINFO_H
#define CHRISTIAUTO_ROBALDO_MESSAGE_PIDINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/Pose2D.h>

namespace christiauto_robaldo
{
template <class ContainerAllocator>
struct PIDInfo_
{
  typedef PIDInfo_<ContainerAllocator> Type;

  PIDInfo_()
    : error()
    , desired()
    , actual()  {
    }
  PIDInfo_(const ContainerAllocator& _alloc)
    : error(_alloc)
    , desired(_alloc)
    , actual(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _error_type;
  _error_type error;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _desired_type;
  _desired_type desired;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _actual_type;
  _actual_type actual;




  typedef boost::shared_ptr< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> const> ConstPtr;

}; // struct PIDInfo_

typedef ::christiauto_robaldo::PIDInfo_<std::allocator<void> > PIDInfo;

typedef boost::shared_ptr< ::christiauto_robaldo::PIDInfo > PIDInfoPtr;
typedef boost::shared_ptr< ::christiauto_robaldo::PIDInfo const> PIDInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::christiauto_robaldo::PIDInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace christiauto_robaldo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'christiauto_robaldo': ['/home/robot/catkin_ws/src/christiauto_robaldo/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "92edbf2a438afd03b29a449025eeb3aa";
  }

  static const char* value(const ::christiauto_robaldo::PIDInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x92edbf2a438afd03ULL;
  static const uint64_t static_value2 = 0xb29a449025eeb3aaULL;
};

template<class ContainerAllocator>
struct DataType< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "christiauto_robaldo/PIDInfo";
  }

  static const char* value(const ::christiauto_robaldo::PIDInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose2D error\n\
geometry_msgs/Pose2D desired\n\
geometry_msgs/Pose2D actual\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
";
  }

  static const char* value(const ::christiauto_robaldo::PIDInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.error);
      stream.next(m.desired);
      stream.next(m.actual);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct PIDInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::christiauto_robaldo::PIDInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::christiauto_robaldo::PIDInfo_<ContainerAllocator>& v)
  {
    s << indent << "error: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.error);
    s << indent << "desired: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.desired);
    s << indent << "actual: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.actual);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CHRISTIAUTO_ROBALDO_MESSAGE_PIDINFO_H