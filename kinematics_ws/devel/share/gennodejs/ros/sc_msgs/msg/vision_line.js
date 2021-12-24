// Auto-generated. Do not edit!

// (in-package sc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class vision_line {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.translate_x = null;
      this.translate_y = null;
      this.rotate_x = null;
      this.rotate_y = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('translate_x')) {
        this.translate_x = initObj.translate_x
      }
      else {
        this.translate_x = 0;
      }
      if (initObj.hasOwnProperty('translate_y')) {
        this.translate_y = initObj.translate_y
      }
      else {
        this.translate_y = 0;
      }
      if (initObj.hasOwnProperty('rotate_x')) {
        this.rotate_x = initObj.rotate_x
      }
      else {
        this.rotate_x = 0;
      }
      if (initObj.hasOwnProperty('rotate_y')) {
        this.rotate_y = initObj.rotate_y
      }
      else {
        this.rotate_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vision_line
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [translate_x]
    bufferOffset = _serializer.int64(obj.translate_x, buffer, bufferOffset);
    // Serialize message field [translate_y]
    bufferOffset = _serializer.int64(obj.translate_y, buffer, bufferOffset);
    // Serialize message field [rotate_x]
    bufferOffset = _serializer.int64(obj.rotate_x, buffer, bufferOffset);
    // Serialize message field [rotate_y]
    bufferOffset = _serializer.int64(obj.rotate_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vision_line
    let len;
    let data = new vision_line(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [translate_x]
    data.translate_x = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [translate_y]
    data.translate_y = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rotate_x]
    data.rotate_x = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rotate_y]
    data.rotate_y = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sc_msgs/vision_line';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5907c32cd7a7cfbeac94d5e88b2280ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int64 translate_x
    int64 translate_y
    int64 rotate_x
    int64 rotate_y
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new vision_line(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.translate_x !== undefined) {
      resolved.translate_x = msg.translate_x;
    }
    else {
      resolved.translate_x = 0
    }

    if (msg.translate_y !== undefined) {
      resolved.translate_y = msg.translate_y;
    }
    else {
      resolved.translate_y = 0
    }

    if (msg.rotate_x !== undefined) {
      resolved.rotate_x = msg.rotate_x;
    }
    else {
      resolved.rotate_x = 0
    }

    if (msg.rotate_y !== undefined) {
      resolved.rotate_y = msg.rotate_y;
    }
    else {
      resolved.rotate_y = 0
    }

    return resolved;
    }
};

module.exports = vision_line;
