// Auto-generated. Do not edit!

// (in-package sc_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let parameters = require('../msg/parameters.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetParamListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param = null;
    }
    else {
      if (initObj.hasOwnProperty('param')) {
        this.param = initObj.param
      }
      else {
        this.param = new parameters();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetParamListRequest
    // Serialize message field [param]
    bufferOffset = parameters.serialize(obj.param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetParamListRequest
    let len;
    let data = new SetParamListRequest(null);
    // Deserialize message field [param]
    data.param = parameters.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += parameters.getMessageSize(object.param);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sc_msgs/SetParamListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1dbbb9344d5148e4dc17b3b0135d5f58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sc_msgs/parameters param
    
    ================================================================================
    MSG: sc_msgs/parameters
    string[] param_name
    float64[] values
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetParamListRequest(null);
    if (msg.param !== undefined) {
      resolved.param = parameters.Resolve(msg.param)
    }
    else {
      resolved.param = new parameters()
    }

    return resolved;
    }
};

class SetParamListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.succ = null;
    }
    else {
      if (initObj.hasOwnProperty('succ')) {
        this.succ = initObj.succ
      }
      else {
        this.succ = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetParamListResponse
    // Serialize message field [succ]
    bufferOffset = _serializer.bool(obj.succ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetParamListResponse
    let len;
    let data = new SetParamListResponse(null);
    // Deserialize message field [succ]
    data.succ = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sc_msgs/SetParamListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f680ede81341c83926ff269af0efb2e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool succ
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetParamListResponse(null);
    if (msg.succ !== undefined) {
      resolved.succ = msg.succ;
    }
    else {
      resolved.succ = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetParamListRequest,
  Response: SetParamListResponse,
  md5sum() { return '6452acbcabbd3d0394d0e8b1c714d527'; },
  datatype() { return 'sc_msgs/SetParamList'; }
};
