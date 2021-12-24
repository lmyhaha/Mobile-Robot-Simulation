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

class vision_rect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.topleft_x = null;
      this.topleft_y = null;
      this.bottomright_x = null;
      this.bottomright_y = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('topleft_x')) {
        this.topleft_x = initObj.topleft_x
      }
      else {
        this.topleft_x = 0;
      }
      if (initObj.hasOwnProperty('topleft_y')) {
        this.topleft_y = initObj.topleft_y
      }
      else {
        this.topleft_y = 0;
      }
      if (initObj.hasOwnProperty('bottomright_x')) {
        this.bottomright_x = initObj.bottomright_x
      }
      else {
        this.bottomright_x = 0;
      }
      if (initObj.hasOwnProperty('bottomright_y')) {
        this.bottomright_y = initObj.bottomright_y
      }
      else {
        this.bottomright_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vision_rect
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [topleft_x]
    bufferOffset = _serializer.int16(obj.topleft_x, buffer, bufferOffset);
    // Serialize message field [topleft_y]
    bufferOffset = _serializer.int16(obj.topleft_y, buffer, bufferOffset);
    // Serialize message field [bottomright_x]
    bufferOffset = _serializer.int16(obj.bottomright_x, buffer, bufferOffset);
    // Serialize message field [bottomright_y]
    bufferOffset = _serializer.int16(obj.bottomright_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vision_rect
    let len;
    let data = new vision_rect(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [topleft_x]
    data.topleft_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [topleft_y]
    data.topleft_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bottomright_x]
    data.bottomright_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bottomright_y]
    data.bottomright_y = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sc_msgs/vision_rect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd08a8c46c56e7512e9950c75e9513e0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int16 topleft_x
    int16 topleft_y
    int16 bottomright_x
    int16 bottomright_y
    
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
    const resolved = new vision_rect(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.topleft_x !== undefined) {
      resolved.topleft_x = msg.topleft_x;
    }
    else {
      resolved.topleft_x = 0
    }

    if (msg.topleft_y !== undefined) {
      resolved.topleft_y = msg.topleft_y;
    }
    else {
      resolved.topleft_y = 0
    }

    if (msg.bottomright_x !== undefined) {
      resolved.bottomright_x = msg.bottomright_x;
    }
    else {
      resolved.bottomright_x = 0
    }

    if (msg.bottomright_y !== undefined) {
      resolved.bottomright_y = msg.bottomright_y;
    }
    else {
      resolved.bottomright_y = 0
    }

    return resolved;
    }
};

module.exports = vision_rect;
