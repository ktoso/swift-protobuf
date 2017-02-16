/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_import_proto3.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

//  Author: kenton@google.com (Kenton Varda)
//   Based on original Protocol Buffers design by
//   Sanjay Ghemawat, Jeff Dean, and others.
// 
//  A proto file which is imported by unittest_proto3.proto to test importing.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

enum Proto3ImportEnum: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case importEnumUnspecified // = 0
  case importFoo // = 7
  case importBar // = 8
  case importBaz // = 9
  case UNRECOGNIZED(Int)

  init() {
    self = .importEnumUnspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .importEnumUnspecified
    case 7: self = .importFoo
    case 8: self = .importBar
    case 9: self = .importBaz
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  init?(jsonName: String) {
    switch jsonName {
    case "IMPORT_ENUM_UNSPECIFIED": self = .importEnumUnspecified
    case "IMPORT_FOO": self = .importFoo
    case "IMPORT_BAR": self = .importBar
    case "IMPORT_BAZ": self = .importBaz
    default: return nil
    }
  }

  init?(protoName: String) {
    switch protoName {
    case "IMPORT_ENUM_UNSPECIFIED": self = .importEnumUnspecified
    case "IMPORT_FOO": self = .importFoo
    case "IMPORT_BAR": self = .importBar
    case "IMPORT_BAZ": self = .importBaz
    default: return nil
    }
  }

  var rawValue: Int {
    get {
      switch self {
      case .importEnumUnspecified: return 0
      case .importFoo: return 7
      case .importBar: return 8
      case .importBaz: return 9
      case .UNRECOGNIZED(let i): return i
      }
    }
  }

  var _protobuf_jsonName: String? {
    get {
      switch self {
      case .importEnumUnspecified: return "IMPORT_ENUM_UNSPECIFIED"
      case .importFoo: return "IMPORT_FOO"
      case .importBar: return "IMPORT_BAR"
      case .importBaz: return "IMPORT_BAZ"
      case .UNRECOGNIZED: return nil
      }
    }
  }

}

struct Proto3ImportMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  static let protoMessageName: String = "ImportMessage"
  static let protoPackageName: String = "protobuf_unittest_import"
  static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "d"),
  ]


  var d: Int32 = 0

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1: try decoder.decodeSingularInt32Field(value: &d)
    default: break
    }
  }

  func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if d != 0 {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: d, fieldNumber: 1)
    }
  }

  func _protoc_generated_isEqualTo(other: Proto3ImportMessage) -> Bool {
    if d != other.d {return false}
    return true
  }
}
