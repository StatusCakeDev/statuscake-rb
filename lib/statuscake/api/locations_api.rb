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
# API version: 1.2.0
# Contact: support@statuscake.com
#
# Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

require 'cgi'

module StatusCake
  # :nodoc
  class LocationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get all pagespeed monitoring locations
    # Returns a list of locations detailing server information for pagespeed monitoring servers. This information can be used to create further checks using the API.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location Alpha-2 ISO 3166-1 country code
    # @return [MonitoringLocations]
    def list_pagespeed_monitoring_locations(opts = {})
      data, _status_code, _headers = list_pagespeed_monitoring_locations_with_http_info(opts)
      data
    end

    # Get all pagespeed monitoring locations
    # Returns a list of locations detailing server information for pagespeed monitoring servers. This information can be used to create further checks using the API.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location Alpha-2 ISO 3166-1 country code
    # @return [Array<(MonitoringLocations, Integer, Hash)>] MonitoringLocations data, response status code and response headers
    def list_pagespeed_monitoring_locations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationsApi.list_pagespeed_monitoring_locations ...'
      end
      # resource path
      local_var_path = '/pagespeed-locations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'location'] = opts[:'location'] unless opts[:'location'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MonitoringLocations'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'LocationsApi.list_pagespeed_monitoring_locations',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationsApi#list_pagespeed_monitoring_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Get all uptime monitoring locations
    # Returns a list of locations detailing server information for uptime monitoring servers. This information can be used to create further checks using the API.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :region_code Server region code
    # @return [MonitoringLocations]
    def list_uptime_monitoring_locations(opts = {})
      data, _status_code, _headers = list_uptime_monitoring_locations_with_http_info(opts)
      data
    end

    # Get all uptime monitoring locations
    # Returns a list of locations detailing server information for uptime monitoring servers. This information can be used to create further checks using the API.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :region_code Server region code
    # @return [Array<(MonitoringLocations, Integer, Hash)>] MonitoringLocations data, response status code and response headers
    def list_uptime_monitoring_locations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationsApi.list_uptime_monitoring_locations ...'
      end
      # resource path
      local_var_path = '/uptime-locations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'region_code'] = opts[:'region_code'] unless opts[:'region_code'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MonitoringLocations'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'LocationsApi.list_uptime_monitoring_locations',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationsApi#list_uptime_monitoring_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end
  end
end
