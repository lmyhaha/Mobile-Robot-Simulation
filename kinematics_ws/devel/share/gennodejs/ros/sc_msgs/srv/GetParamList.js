// Auto-generated. Do not edit!

// (in-package sc_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let parameters = require('../msg/parameters.js');

//-----------------------------------------------------------

class GetParamListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetParamListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetParamListRequest
    let len;
    let data = new GetParamListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sc_msgs/GetParamListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetParamListRequest(null);
    return resolved;
    }
};

class GetParamListResponse {
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
    // Serializes a message object of type GetParamListResponse
    // Serialize message field [param]
    bufferOffset = parameters.serialize(obj.param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetParamListResponse
    let len;
    let data = new GetParamListResponse(null);
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
    return 'sc_msgs/GetParamListResponse';
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
    const resolved = new GetParamListResponse(null);
    if (msg.param !== undefined) {
      resolved.param = parameters.Resolve(msg.param)
    }
    else {
      resolved.param = new parameters()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetParamListRequest,
  Response: GetParamListResponse,
  md5sum() { return '1dbbb9344d5148e4dc17b3b0135d5f58'; },
  datatype() { return 'sc_msgs/GetParamList'; }
};
