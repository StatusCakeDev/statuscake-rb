# frozen_string_literal: true

# StatusCake API
#
# Copyright (c) 2023
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.
#
# API version: 1.1.0
# Contact: support@statuscake.com
#
# Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

# Common files
require 'statuscake/api_client'
require 'statuscake/api_error'
require 'statuscake/version'
require 'statuscake/configuration'

# Models
require 'statuscake/models/api_error'
require 'statuscake/models/api_response'
require 'statuscake/models/api_response_data'
require 'statuscake/models/contact_group'
require 'statuscake/models/contact_group_response'
require 'statuscake/models/contact_groups'
require 'statuscake/models/links'
require 'statuscake/models/maintenance_window'
require 'statuscake/models/maintenance_window_repeat_interval'
require 'statuscake/models/maintenance_window_response'
require 'statuscake/models/maintenance_window_state'
require 'statuscake/models/maintenance_windows'
require 'statuscake/models/monitoring_location'
require 'statuscake/models/monitoring_location_status'
require 'statuscake/models/monitoring_locations'
require 'statuscake/models/pagespeed_test'
require 'statuscake/models/pagespeed_test_check_rate'
require 'statuscake/models/pagespeed_test_history'
require 'statuscake/models/pagespeed_test_history_result'
require 'statuscake/models/pagespeed_test_region'
require 'statuscake/models/pagespeed_test_response'
require 'statuscake/models/pagespeed_test_stats'
require 'statuscake/models/pagespeed_test_throttling'
require 'statuscake/models/pagespeed_tests'
require 'statuscake/models/pagination'
require 'statuscake/models/ssl_test'
require 'statuscake/models/ssl_test_check_rate'
require 'statuscake/models/ssl_test_flags'
require 'statuscake/models/ssl_test_mixed_content'
require 'statuscake/models/ssl_test_response'
require 'statuscake/models/ssl_tests'
require 'statuscake/models/uptime_test'
require 'statuscake/models/uptime_test_alert'
require 'statuscake/models/uptime_test_alerts'
require 'statuscake/models/uptime_test_check_rate'
require 'statuscake/models/uptime_test_history'
require 'statuscake/models/uptime_test_history_result'
require 'statuscake/models/uptime_test_overview'
require 'statuscake/models/uptime_test_period'
require 'statuscake/models/uptime_test_periods'
require 'statuscake/models/uptime_test_processing_state'
require 'statuscake/models/uptime_test_response'
require 'statuscake/models/uptime_test_status'
require 'statuscake/models/uptime_test_type'
require 'statuscake/models/uptime_tests'

# APIs
require 'statuscake/api/contact_groups_api'
require 'statuscake/api/locations_api'
require 'statuscake/api/maintenance_windows_api'
require 'statuscake/api/pagespeed_api'
require 'statuscake/api/ssl_api'
require 'statuscake/api/uptime_api'

# :nodoc
module StatusCake
  class << self
    # Customize default settings for the SDK using block.
    #   StatusCake.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
