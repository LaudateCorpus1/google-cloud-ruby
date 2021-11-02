# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/talent/v4/company_service.proto for package 'google.cloud.talent.v4'
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
require 'google/cloud/talent/v4/company_service_pb'

module Google
  module Cloud
    module Talent
      module V4
        module CompanyService
          # A service that handles company management, including CRUD and enumeration.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.talent.v4.CompanyService'

            # Creates a new company entity.
            rpc :CreateCompany, ::Google::Cloud::Talent::V4::CreateCompanyRequest, ::Google::Cloud::Talent::V4::Company
            # Retrieves specified company.
            rpc :GetCompany, ::Google::Cloud::Talent::V4::GetCompanyRequest, ::Google::Cloud::Talent::V4::Company
            # Updates specified company.
            rpc :UpdateCompany, ::Google::Cloud::Talent::V4::UpdateCompanyRequest, ::Google::Cloud::Talent::V4::Company
            # Deletes specified company.
            # Prerequisite: The company has no jobs associated with it.
            rpc :DeleteCompany, ::Google::Cloud::Talent::V4::DeleteCompanyRequest, ::Google::Protobuf::Empty
            # Lists all companies associated with the project.
            rpc :ListCompanies, ::Google::Cloud::Talent::V4::ListCompaniesRequest, ::Google::Cloud::Talent::V4::ListCompaniesResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
