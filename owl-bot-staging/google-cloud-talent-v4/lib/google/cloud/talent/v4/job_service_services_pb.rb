# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/talent/v4/job_service.proto for package 'google.cloud.talent.v4'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/talent/v4/job_service_pb'

module Google
  module Cloud
    module Talent
      module V4
        module JobService
          # A service handles job management, including job CRUD, enumeration and search.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.talent.v4.JobService'

            # Creates a new job.
            #
            # Typically, the job becomes searchable within 10 seconds, but it may take
            # up to 5 minutes.
            rpc :CreateJob, ::Google::Cloud::Talent::V4::CreateJobRequest, ::Google::Cloud::Talent::V4::Job
            # Begins executing a batch create jobs operation.
            rpc :BatchCreateJobs, ::Google::Cloud::Talent::V4::BatchCreateJobsRequest, ::Google::Longrunning::Operation
            # Retrieves the specified job, whose status is OPEN or recently EXPIRED
            # within the last 90 days.
            rpc :GetJob, ::Google::Cloud::Talent::V4::GetJobRequest, ::Google::Cloud::Talent::V4::Job
            # Updates specified job.
            #
            # Typically, updated contents become visible in search results within 10
            # seconds, but it may take up to 5 minutes.
            rpc :UpdateJob, ::Google::Cloud::Talent::V4::UpdateJobRequest, ::Google::Cloud::Talent::V4::Job
            # Begins executing a batch update jobs operation.
            rpc :BatchUpdateJobs, ::Google::Cloud::Talent::V4::BatchUpdateJobsRequest, ::Google::Longrunning::Operation
            # Deletes the specified job.
            #
            # Typically, the job becomes unsearchable within 10 seconds, but it may take
            # up to 5 minutes.
            rpc :DeleteJob, ::Google::Cloud::Talent::V4::DeleteJobRequest, ::Google::Protobuf::Empty
            # Begins executing a batch delete jobs operation.
            rpc :BatchDeleteJobs, ::Google::Cloud::Talent::V4::BatchDeleteJobsRequest, ::Google::Longrunning::Operation
            # Lists jobs by filter.
            rpc :ListJobs, ::Google::Cloud::Talent::V4::ListJobsRequest, ::Google::Cloud::Talent::V4::ListJobsResponse
            # Searches for jobs using the provided [SearchJobsRequest][google.cloud.talent.v4.SearchJobsRequest].
            #
            # This call constrains the [visibility][google.cloud.talent.v4.Job.visibility] of jobs
            # present in the database, and only returns jobs that the caller has
            # permission to search against.
            rpc :SearchJobs, ::Google::Cloud::Talent::V4::SearchJobsRequest, ::Google::Cloud::Talent::V4::SearchJobsResponse
            # Searches for jobs using the provided [SearchJobsRequest][google.cloud.talent.v4.SearchJobsRequest].
            #
            # This API call is intended for the use case of targeting passive job
            # seekers (for example, job seekers who have signed up to receive email
            # alerts about potential job opportunities), it has different algorithmic
            # adjustments that are designed to specifically target passive job seekers.
            #
            # This call constrains the [visibility][google.cloud.talent.v4.Job.visibility] of jobs
            # present in the database, and only returns jobs the caller has
            # permission to search against.
            rpc :SearchJobsForAlert, ::Google::Cloud::Talent::V4::SearchJobsRequest, ::Google::Cloud::Talent::V4::SearchJobsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
