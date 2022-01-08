# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/uptime_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/monitoring/v3/uptime_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/v3/uptime_service.proto", :syntax => :proto3) do
    add_message "google.monitoring.v3.ListUptimeCheckConfigsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.monitoring.v3.ListUptimeCheckConfigsResponse" do
      repeated :uptime_check_configs, :message, 1, "google.monitoring.v3.UptimeCheckConfig"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
    add_message "google.monitoring.v3.GetUptimeCheckConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.monitoring.v3.CreateUptimeCheckConfigRequest" do
      optional :parent, :string, 1
      optional :uptime_check_config, :message, 2, "google.monitoring.v3.UptimeCheckConfig"
    end
    add_message "google.monitoring.v3.UpdateUptimeCheckConfigRequest" do
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :uptime_check_config, :message, 3, "google.monitoring.v3.UptimeCheckConfig"
    end
    add_message "google.monitoring.v3.DeleteUptimeCheckConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.monitoring.v3.ListUptimeCheckIpsRequest" do
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.monitoring.v3.ListUptimeCheckIpsResponse" do
      repeated :uptime_check_ips, :message, 1, "google.monitoring.v3.UptimeCheckIp"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module V3
        ListUptimeCheckConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListUptimeCheckConfigsRequest").msgclass
        ListUptimeCheckConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListUptimeCheckConfigsResponse").msgclass
        GetUptimeCheckConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetUptimeCheckConfigRequest").msgclass
        CreateUptimeCheckConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateUptimeCheckConfigRequest").msgclass
        UpdateUptimeCheckConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.UpdateUptimeCheckConfigRequest").msgclass
        DeleteUptimeCheckConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.DeleteUptimeCheckConfigRequest").msgclass
        ListUptimeCheckIpsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListUptimeCheckIpsRequest").msgclass
        ListUptimeCheckIpsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListUptimeCheckIpsResponse").msgclass
      end
    end
  end
end
