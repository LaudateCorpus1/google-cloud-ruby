# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Monitoring
      module V3
        module AlertPolicyService
          # Path helper methods for the AlertPolicyService API.
          module Paths
            ##
            # Create a fully-qualified AlertPolicy resource string.
            #
            # @overload alert_policy_path(project:, alert_policy:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/alertPolicies/{alert_policy}`
            #
            #   @param project [String]
            #   @param alert_policy [String]
            #
            # @overload alert_policy_path(organization:, alert_policy:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/alertPolicies/{alert_policy}`
            #
            #   @param organization [String]
            #   @param alert_policy [String]
            #
            # @overload alert_policy_path(folder:, alert_policy:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/alertPolicies/{alert_policy}`
            #
            #   @param folder [String]
            #   @param alert_policy [String]
            #
            # @return [::String]
            def alert_policy_path **args
              resources = {
                "alert_policy:project" => (proc do |project:, alert_policy:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/alertPolicies/#{alert_policy}"
                end),
                "alert_policy:organization" => (proc do |organization:, alert_policy:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

                  "organizations/#{organization}/alertPolicies/#{alert_policy}"
                end),
                "alert_policy:folder" => (proc do |folder:, alert_policy:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"

                  "folders/#{folder}/alertPolicies/#{alert_policy}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified AlertPolicyCondition resource string.
            #
            # @overload alert_policy_condition_path(project:, alert_policy:, condition:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/alertPolicies/{alert_policy}/conditions/{condition}`
            #
            #   @param project [String]
            #   @param alert_policy [String]
            #   @param condition [String]
            #
            # @overload alert_policy_condition_path(organization:, alert_policy:, condition:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/alertPolicies/{alert_policy}/conditions/{condition}`
            #
            #   @param organization [String]
            #   @param alert_policy [String]
            #   @param condition [String]
            #
            # @overload alert_policy_condition_path(folder:, alert_policy:, condition:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/alertPolicies/{alert_policy}/conditions/{condition}`
            #
            #   @param folder [String]
            #   @param alert_policy [String]
            #   @param condition [String]
            #
            # @return [::String]
            def alert_policy_condition_path **args
              resources = {
                "alert_policy:condition:project" => (proc do |project:, alert_policy:, condition:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "alert_policy cannot contain /" if alert_policy.to_s.include? "/"

                  "projects/#{project}/alertPolicies/#{alert_policy}/conditions/#{condition}"
                end),
                "alert_policy:condition:organization" => (proc do |organization:, alert_policy:, condition:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "alert_policy cannot contain /" if alert_policy.to_s.include? "/"

                  "organizations/#{organization}/alertPolicies/#{alert_policy}/conditions/#{condition}"
                end),
                "alert_policy:condition:folder" => (proc do |folder:, alert_policy:, condition:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"
                  raise ::ArgumentError, "alert_policy cannot contain /" if alert_policy.to_s.include? "/"

                  "folders/#{folder}/alertPolicies/#{alert_policy}/conditions/#{condition}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Folder resource string.
            #
            # The resource will be in the following format:
            #
            # `folders/{folder}`
            #
            # @param folder [String]
            #
            # @return [::String]
            def folder_path folder:
              "folders/#{folder}"
            end

            ##
            # Create a fully-qualified Organization resource string.
            #
            # The resource will be in the following format:
            #
            # `organizations/{organization}`
            #
            # @param organization [String]
            #
            # @return [::String]
            def organization_path organization:
              "organizations/#{organization}"
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            ##
            # Create a fully-qualified Workspace resource string.
            #
            # @overload workspace_path(project:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}`
            #
            #   @param project [String]
            #
            # @overload workspace_path(workspace:)
            #   The resource will be in the following format:
            #
            #   `workspaces/{workspace}`
            #
            #   @param workspace [String]
            #
            # @return [::String]
            def workspace_path **args
              resources = {
                "project" => (proc do |project:|
                  "projects/#{project}"
                end),
                "workspace" => (proc do |workspace:|
                  "workspaces/#{workspace}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            extend self
          end
        end
      end
    end
  end
end
