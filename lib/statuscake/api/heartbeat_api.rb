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
  class HeartbeatApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a heartbeat check
    # Creates a heartbeat check with the given parameters.
    # @param name [String] Name of the check
    # @param period [Integer] Number of seconds since the last ping before the check is considered down
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :contact_groups List of contact group IDs
    # @option opts [String] :host Name of the hosting provider
    # @option opts [Boolean] :paused Whether the check should be run (default to false)
    # @option opts [Array<String>] :tags List of tags
    # @return [APIResponse]
    def create_heartbeat_test(name, period, opts = {})
      data, _status_code, _headers = create_heartbeat_test_with_http_info(name, period, opts)
      data
    end

    # Create a heartbeat check
    # Creates a heartbeat check with the given parameters.
    # @param name [String] Name of the check
    # @param period [Integer] Number of seconds since the last ping before the check is considered down
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :contact_groups List of contact group IDs
    # @option opts [String] :host Name of the hosting provider
    # @option opts [Boolean] :paused Whether the check should be run (default to false)
    # @option opts [Array<String>] :tags List of tags
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def create_heartbeat_test_with_http_info(name, period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeartbeatApi.create_heartbeat_test ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling HeartbeatApi.create_heartbeat_test"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        raise ArgumentError, "Missing the required parameter 'period' when calling HeartbeatApi.create_heartbeat_test"
      end
      if @api_client.config.client_side_validation && period > 172800
        raise ArgumentError, 'invalid value for "period" when calling HeartbeatApi.create_heartbeat_test, must be smaller than or equal to 172800.'
      end

      if @api_client.config.client_side_validation && period < 30
        raise ArgumentError, 'invalid value for "period" when calling HeartbeatApi.create_heartbeat_test, must be greater than or equal to 30.'
      end

      # resource path
      local_var_path = '/heartbeat'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['name'] = name
      form_params['period'] = period
      form_params['contact_groups'] = @api_client.build_collection_param(opts[:'contact_groups'], :csv) unless opts[:'contact_groups'].nil?
      form_params['host'] = opts[:'host'] unless opts[:'host'].nil?
      form_params['paused'] = opts[:'paused'] unless opts[:'paused'].nil?
      form_params['tags'] = @api_client.build_collection_param(opts[:'tags'], :csv) unless opts[:'tags'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'HeartbeatApi.create_heartbeat_test',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeartbeatApi#create_heartbeat_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Delete a heartbeat check
    # Deletes a heartbeat check with the given id.
    # @param test_id [String] Heartbeat check ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_heartbeat_test(test_id, opts = {})
      delete_heartbeat_test_with_http_info(test_id, opts)
      nil
    end

    # Delete a heartbeat check
    # Deletes a heartbeat check with the given id.
    # @param test_id [String] Heartbeat check ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_heartbeat_test_with_http_info(test_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeartbeatApi.delete_heartbeat_test ...'
      end
      # verify the required parameter 'test_id' is set
      if @api_client.config.client_side_validation && test_id.nil?
        raise ArgumentError, "Missing the required parameter 'test_id' when calling HeartbeatApi.delete_heartbeat_test"
      end
      # resource path
      local_var_path = '/heartbeat/{test_id}'.sub('{' + 'test_id' + '}', CGI.escape(test_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'HeartbeatApi.delete_heartbeat_test',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeartbeatApi#delete_heartbeat_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Retrieve a heartbeat check
    # Returns a heartbeat check with the given id.
    # @param test_id [String] Heartbeat check ID
    # @param [Hash] opts the optional parameters
    # @return [HeartbeatTestResponse]
    def get_heartbeat_test(test_id, opts = {})
      data, _status_code, _headers = get_heartbeat_test_with_http_info(test_id, opts)
      data
    end

    # Retrieve a heartbeat check
    # Returns a heartbeat check with the given id.
    # @param test_id [String] Heartbeat check ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(HeartbeatTestResponse, Integer, Hash)>] HeartbeatTestResponse data, response status code and response headers
    def get_heartbeat_test_with_http_info(test_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeartbeatApi.get_heartbeat_test ...'
      end
      # verify the required parameter 'test_id' is set
      if @api_client.config.client_side_validation && test_id.nil?
        raise ArgumentError, "Missing the required parameter 'test_id' when calling HeartbeatApi.get_heartbeat_test"
      end
      # resource path
      local_var_path = '/heartbeat/{test_id}'.sub('{' + 'test_id' + '}', CGI.escape(test_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HeartbeatTestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'HeartbeatApi.get_heartbeat_test',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeartbeatApi#get_heartbeat_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Get all heartbeat checks
    # Returns a list of heartbeat checks for an account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Heartbeat check status
    # @option opts [Integer] :page Page of results (default to 1)
    # @option opts [Integer] :limit The number of heartbeat checks to return per page (default to 25)
    # @option opts [String] :tags Comma separated list of tags assocaited with a check
    # @option opts [Boolean] :matchany Include heartbeat checks in response that match any specified tag or all tags (default to false)
    # @option opts [Boolean] :nouptime Do not calculate uptime percentages for results (default to false)
    # @return [HeartbeatTests]
    def list_heartbeat_tests(opts = {})
      data, _status_code, _headers = list_heartbeat_tests_with_http_info(opts)
      data
    end

    # Get all heartbeat checks
    # Returns a list of heartbeat checks for an account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Heartbeat check status
    # @option opts [Integer] :page Page of results (default to 1)
    # @option opts [Integer] :limit The number of heartbeat checks to return per page (default to 25)
    # @option opts [String] :tags Comma separated list of tags assocaited with a check
    # @option opts [Boolean] :matchany Include heartbeat checks in response that match any specified tag or all tags (default to false)
    # @option opts [Boolean] :nouptime Do not calculate uptime percentages for results (default to false)
    # @return [Array<(HeartbeatTests, Integer, Hash)>] HeartbeatTests data, response status code and response headers
    def list_heartbeat_tests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeartbeatApi.list_heartbeat_tests ...'
      end
      # rubocop:disable Style/WordArray
      allowable_values = ["down", "up"]
      # rubocop:enable Style/WordArray
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        raise ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        raise ArgumentError, 'invalid value for "opts[:"page"]" when calling HeartbeatApi.list_heartbeat_tests, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        raise ArgumentError, 'invalid value for "opts[:"limit"]" when calling HeartbeatApi.list_heartbeat_tests, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        raise ArgumentError, 'invalid value for "opts[:"limit"]" when calling HeartbeatApi.list_heartbeat_tests, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/heartbeat'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] unless opts[:'status'].nil?
      query_params[:'page'] = opts[:'page'] unless opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] unless opts[:'limit'].nil?
      query_params[:'tags'] = opts[:'tags'] unless opts[:'tags'].nil?
      query_params[:'matchany'] = opts[:'matchany'] unless opts[:'matchany'].nil?
      query_params[:'nouptime'] = opts[:'nouptime'] unless opts[:'nouptime'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HeartbeatTests'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'HeartbeatApi.list_heartbeat_tests',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeartbeatApi#list_heartbeat_tests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Update a heartbeat check
    # Updates a heartbeat check with the given parameters.
    # @param test_id [String] Heartbeat check ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the check
    # @option opts [Integer] :period Number of seconds since the last ping before the check is considered down
    # @option opts [Array<String>] :contact_groups List of contact group IDs
    # @option opts [String] :host Name of the hosting provider
    # @option opts [Boolean] :paused Whether the check should be run
    # @option opts [Array<String>] :tags List of tags
    # @return [nil]
    def update_heartbeat_test(test_id, opts = {})
      update_heartbeat_test_with_http_info(test_id, opts)
      nil
    end

    # Update a heartbeat check
    # Updates a heartbeat check with the given parameters.
    # @param test_id [String] Heartbeat check ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the check
    # @option opts [Integer] :period Number of seconds since the last ping before the check is considered down
    # @option opts [Array<String>] :contact_groups List of contact group IDs
    # @option opts [String] :host Name of the hosting provider
    # @option opts [Boolean] :paused Whether the check should be run
    # @option opts [Array<String>] :tags List of tags
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_heartbeat_test_with_http_info(test_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeartbeatApi.update_heartbeat_test ...'
      end
      # verify the required parameter 'test_id' is set
      if @api_client.config.client_side_validation && test_id.nil?
        raise ArgumentError, "Missing the required parameter 'test_id' when calling HeartbeatApi.update_heartbeat_test"
      end
      if @api_client.config.client_side_validation && !opts[:'period'].nil? && opts[:'period'] > 172800
        raise ArgumentError, 'invalid value for "opts[:"period"]" when calling HeartbeatApi.update_heartbeat_test, must be smaller than or equal to 172800.'
      end

      if @api_client.config.client_side_validation && !opts[:'period'].nil? && opts[:'period'] < 30
        raise ArgumentError, 'invalid value for "opts[:"period"]" when calling HeartbeatApi.update_heartbeat_test, must be greater than or equal to 30.'
      end

      # resource path
      local_var_path = '/heartbeat/{test_id}'.sub('{' + 'test_id' + '}', CGI.escape(test_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['name'] = opts[:'name'] unless opts[:'name'].nil?
      form_params['period'] = opts[:'period'] unless opts[:'period'].nil?
      form_params['contact_groups'] = @api_client.build_collection_param(opts[:'contact_groups'], :csv) unless opts[:'contact_groups'].nil?
      form_params['host'] = opts[:'host'] unless opts[:'host'].nil?
      form_params['paused'] = opts[:'paused'] unless opts[:'paused'].nil?
      form_params['tags'] = @api_client.build_collection_param(opts[:'tags'], :csv) unless opts[:'tags'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'HeartbeatApi.update_heartbeat_test',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeartbeatApi#update_heartbeat_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end
  end
end
