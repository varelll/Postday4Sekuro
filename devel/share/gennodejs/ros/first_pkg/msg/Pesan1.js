// Auto-generated. Do not edit!

// (in-package first_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Pesan1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.usia = null;
      this.tinggi = null;
      this.nama = null;
      this.kehadiran = null;
    }
    else {
      if (initObj.hasOwnProperty('usia')) {
        this.usia = initObj.usia
      }
      else {
        this.usia = 0;
      }
      if (initObj.hasOwnProperty('tinggi')) {
        this.tinggi = initObj.tinggi
      }
      else {
        this.tinggi = 0.0;
      }
      if (initObj.hasOwnProperty('nama')) {
        this.nama = initObj.nama
      }
      else {
        this.nama = '';
      }
      if (initObj.hasOwnProperty('kehadiran')) {
        this.kehadiran = initObj.kehadiran
      }
      else {
        this.kehadiran = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pesan1
    // Serialize message field [usia]
    bufferOffset = _serializer.int64(obj.usia, buffer, bufferOffset);
    // Serialize message field [tinggi]
    bufferOffset = _serializer.float64(obj.tinggi, buffer, bufferOffset);
    // Serialize message field [nama]
    bufferOffset = _serializer.string(obj.nama, buffer, bufferOffset);
    // Serialize message field [kehadiran]
    bufferOffset = _serializer.bool(obj.kehadiran, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pesan1
    let len;
    let data = new Pesan1(null);
    // Deserialize message field [usia]
    data.usia = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [tinggi]
    data.tinggi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [nama]
    data.nama = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [kehadiran]
    data.kehadiran = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.nama);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'first_pkg/Pesan1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ad8335939c8d987f5e0189e0ca2b800';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 usia
    float64 tinggi
    string nama
    bool kehadiran
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pesan1(null);
    if (msg.usia !== undefined) {
      resolved.usia = msg.usia;
    }
    else {
      resolved.usia = 0
    }

    if (msg.tinggi !== undefined) {
      resolved.tinggi = msg.tinggi;
    }
    else {
      resolved.tinggi = 0.0
    }

    if (msg.nama !== undefined) {
      resolved.nama = msg.nama;
    }
    else {
      resolved.nama = ''
    }

    if (msg.kehadiran !== undefined) {
      resolved.kehadiran = msg.kehadiran;
    }
    else {
      resolved.kehadiran = false
    }

    return resolved;
    }
};

module.exports = Pesan1;
