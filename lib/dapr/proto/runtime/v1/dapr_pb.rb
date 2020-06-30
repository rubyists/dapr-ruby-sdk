# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: dapr/proto/runtime/v1/dapr.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
require 'dapr/proto/common/v1/common_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("dapr/proto/runtime/v1/dapr.proto", :syntax => :proto3) do
    add_message "dapr.proto.runtime.v1.InvokeServiceRequest" do
      optional :id, :string, 1
      optional :message, :message, 3, "dapr.proto.common.v1.InvokeRequest"
    end
    add_message "dapr.proto.runtime.v1.GetStateRequest" do
      optional :store_name, :string, 1
      optional :key, :string, 2
      optional :consistency, :enum, 3, "dapr.proto.common.v1.StateOptions.StateConsistency"
    end
    add_message "dapr.proto.runtime.v1.GetStateResponse" do
      optional :data, :bytes, 1
      optional :etag, :string, 2
    end
    add_message "dapr.proto.runtime.v1.DeleteStateRequest" do
      optional :store_name, :string, 1
      optional :key, :string, 2
      optional :etag, :string, 3
      optional :options, :message, 4, "dapr.proto.common.v1.StateOptions"
    end
    add_message "dapr.proto.runtime.v1.SaveStateRequest" do
      optional :store_name, :string, 1
      repeated :states, :message, 2, "dapr.proto.common.v1.StateItem"
    end
    add_message "dapr.proto.runtime.v1.PublishEventRequest" do
      optional :topic, :string, 1
      optional :data, :bytes, 2
    end
    add_message "dapr.proto.runtime.v1.InvokeBindingRequest" do
      optional :name, :string, 1
      optional :data, :bytes, 2
      map :metadata, :string, :string, 3
      optional :operation, :string, 4
    end
    add_message "dapr.proto.runtime.v1.InvokeBindingResponse" do
      optional :data, :bytes, 1
      map :metadata, :string, :string, 2
    end
    add_message "dapr.proto.runtime.v1.GetSecretRequest" do
      optional :store_name, :string, 1
      optional :key, :string, 2
      map :metadata, :string, :string, 3
    end
    add_message "dapr.proto.runtime.v1.GetSecretResponse" do
      map :data, :string, :string, 1
    end
  end
end

module Dapr
  module Proto
    module Runtime
      module V1
        InvokeServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.InvokeServiceRequest").msgclass
        GetStateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.GetStateRequest").msgclass
        GetStateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.GetStateResponse").msgclass
        DeleteStateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.DeleteStateRequest").msgclass
        SaveStateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.SaveStateRequest").msgclass
        PublishEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.PublishEventRequest").msgclass
        InvokeBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.InvokeBindingRequest").msgclass
        InvokeBindingResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.InvokeBindingResponse").msgclass
        GetSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.GetSecretRequest").msgclass
        GetSecretResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.GetSecretResponse").msgclass
      end
    end
  end
end
