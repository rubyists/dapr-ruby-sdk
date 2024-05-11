# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: dapr/proto/common/v1/common.proto

require 'google/protobuf'

require 'google/protobuf/any_pb'


descriptor_data = "\n!dapr/proto/common/v1/common.proto\x12\x14\x64\x61pr.proto.common.v1\x1a\x19google/protobuf/any.proto\"\xd0\x01\n\rHTTPExtension\x12\x36\n\x04verb\x18\x01 \x01(\x0e\x32(.dapr.proto.common.v1.HTTPExtension.Verb\x12\x13\n\x0bquerystring\x18\x02 \x01(\t\"r\n\x04Verb\x12\x08\n\x04NONE\x10\x00\x12\x07\n\x03GET\x10\x01\x12\x08\n\x04HEAD\x10\x02\x12\x08\n\x04POST\x10\x03\x12\x07\n\x03PUT\x10\x04\x12\n\n\x06\x44\x45LETE\x10\x05\x12\x0b\n\x07\x43ONNECT\x10\x06\x12\x0b\n\x07OPTIONS\x10\x07\x12\t\n\x05TRACE\x10\x08\x12\t\n\x05PATCH\x10\t\"\x96\x01\n\rInvokeRequest\x12\x0e\n\x06method\x18\x01 \x01(\t\x12\"\n\x04\x64\x61ta\x18\x02 \x01(\x0b\x32\x14.google.protobuf.Any\x12\x14\n\x0c\x63ontent_type\x18\x03 \x01(\t\x12;\n\x0ehttp_extension\x18\x04 \x01(\x0b\x32#.dapr.proto.common.v1.HTTPExtension\"J\n\x0eInvokeResponse\x12\"\n\x04\x64\x61ta\x18\x01 \x01(\x0b\x32\x14.google.protobuf.Any\x12\x14\n\x0c\x63ontent_type\x18\x02 \x01(\t\"*\n\rStreamPayload\x12\x0c\n\x04\x64\x61ta\x18\x01 \x01(\x0c\x12\x0b\n\x03seq\x18\x02 \x01(\x04\"\xf8\x01\n\tStateItem\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x0c\x12(\n\x04\x65tag\x18\x03 \x01(\x0b\x32\x1a.dapr.proto.common.v1.Etag\x12?\n\x08metadata\x18\x04 \x03(\x0b\x32-.dapr.proto.common.v1.StateItem.MetadataEntry\x12\x33\n\x07options\x18\x05 \x01(\x0b\x32\".dapr.proto.common.v1.StateOptions\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x15\n\x04\x45tag\x12\r\n\x05value\x18\x01 \x01(\t\"\xef\x02\n\x0cStateOptions\x12H\n\x0b\x63oncurrency\x18\x01 \x01(\x0e\x32\x33.dapr.proto.common.v1.StateOptions.StateConcurrency\x12H\n\x0b\x63onsistency\x18\x02 \x01(\x0e\x32\x33.dapr.proto.common.v1.StateOptions.StateConsistency\"h\n\x10StateConcurrency\x12\x1b\n\x17\x43ONCURRENCY_UNSPECIFIED\x10\x00\x12\x1b\n\x17\x43ONCURRENCY_FIRST_WRITE\x10\x01\x12\x1a\n\x16\x43ONCURRENCY_LAST_WRITE\x10\x02\"a\n\x10StateConsistency\x12\x1b\n\x17\x43ONSISTENCY_UNSPECIFIED\x10\x00\x12\x18\n\x14\x43ONSISTENCY_EVENTUAL\x10\x01\x12\x16\n\x12\x43ONSISTENCY_STRONG\x10\x02\"\xad\x01\n\x11\x43onfigurationItem\x12\r\n\x05value\x18\x01 \x01(\t\x12\x0f\n\x07version\x18\x02 \x01(\t\x12G\n\x08metadata\x18\x03 \x03(\x0b\x32\x35.dapr.proto.common.v1.ConfigurationItem.MetadataEntry\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42i\n\nio.dapr.v1B\x0c\x43ommonProtosZ/github.com/dapr/dapr/pkg/proto/common/v1;common\xaa\x02\x1b\x44\x61pr.Client.Autogen.Grpc.v1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Any", "google/protobuf/any.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Dapr
  module Proto
    module Common
      module V1
        HTTPExtension = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.HTTPExtension").msgclass
        HTTPExtension::Verb = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.HTTPExtension.Verb").enummodule
        InvokeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.InvokeRequest").msgclass
        InvokeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.InvokeResponse").msgclass
        StreamPayload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.StreamPayload").msgclass
        StateItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.StateItem").msgclass
        Etag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.Etag").msgclass
        StateOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.StateOptions").msgclass
        StateOptions::StateConcurrency = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.StateOptions.StateConcurrency").enummodule
        StateOptions::StateConsistency = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.StateOptions.StateConsistency").enummodule
        ConfigurationItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.common.v1.ConfigurationItem").msgclass
      end
    end
  end
end
