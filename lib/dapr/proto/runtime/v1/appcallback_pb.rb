# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: dapr/proto/runtime/v1/appcallback.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
require 'dapr/proto/common/v1/common_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("dapr/proto/runtime/v1/appcallback.proto", :syntax => :proto3) do
    add_message "dapr.proto.runtime.v1.TopicEventRequest" do
      optional :id, :string, 1
      optional :source, :string, 2
      optional :type, :string, 3
      optional :spec_version, :string, 4
      optional :data_content_type, :string, 5
      optional :data, :bytes, 7
      optional :topic, :string, 6
    end
    add_message "dapr.proto.runtime.v1.BindingEventRequest" do
      optional :name, :string, 1
      optional :data, :bytes, 2
      map :metadata, :string, :string, 3
    end
    add_message "dapr.proto.runtime.v1.BindingEventResponse" do
      optional :store_name, :string, 1
      repeated :states, :message, 2, "dapr.proto.common.v1.StateItem"
      repeated :to, :string, 3
      optional :data, :bytes, 4
      optional :concurrency, :enum, 5, "dapr.proto.runtime.v1.BindingEventResponse.BindingEventConcurrency"
    end
    add_enum "dapr.proto.runtime.v1.BindingEventResponse.BindingEventConcurrency" do
      value :SEQUENTIAL, 0
      value :PARALLEL, 1
    end
    add_message "dapr.proto.runtime.v1.ListTopicSubscriptionsResponse" do
      repeated :subscriptions, :message, 1, "dapr.proto.runtime.v1.TopicSubscription"
    end
    add_message "dapr.proto.runtime.v1.TopicSubscription" do
      optional :topic, :string, 1
      map :metadata, :string, :string, 2
    end
    add_message "dapr.proto.runtime.v1.ListInputBindingsResponse" do
      repeated :bindings, :string, 1
    end
  end
end

module Dapr
  module Proto
    module Runtime
      module V1
        TopicEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.TopicEventRequest").msgclass
        BindingEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.BindingEventRequest").msgclass
        BindingEventResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.BindingEventResponse").msgclass
        BindingEventResponse::BindingEventConcurrency = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.BindingEventResponse.BindingEventConcurrency").enummodule
        ListTopicSubscriptionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.ListTopicSubscriptionsResponse").msgclass
        TopicSubscription = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.TopicSubscription").msgclass
        ListInputBindingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dapr.proto.runtime.v1.ListInputBindingsResponse").msgclass
      end
    end
  end
end
