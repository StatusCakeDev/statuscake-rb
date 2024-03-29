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
  class SslApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an SSL check
    # Creates an SSL check with the given parameters.
    # @param website_url [String] URL of the server under test. Must begin with https://
    # @param check_rate [SSLTestCheckRate]
    # @param alert_at [Array<Integer>] List representing when alerts should be sent (days). Must be exactly 3 numerical values
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :alert_broken Whether to enable alerts when SSL certificate issues are found (default to false)
    # @option opts [Boolean] :alert_expiry Whether to enable alerts when the SSL certificate is to expire (default to false)
    # @option opts [Boolean] :alert_mixed Whether to enable alerts when mixed content is found (default to false)
    # @option opts [Boolean] :alert_reminder Whether to enable alert reminders (default to false)
    # @option opts [Array<String>] :contact_groups List of contact group IDs
    # @option opts [Boolean] :follow_redirects Whether to follow redirects when testing. Disabled by default (default to false)
    # @option opts [String] :hostname Hostname of the server under test
    # @option opts [Boolean] :paused Whether the check should be run (default to false)
    # @option opts [String] :user_agent Custom user agent string set when testing
    # @return [APIResponse]
    def create_ssl_test(website_url, check_rate, alert_at, opts = {})
      data, _status_code, _headers = create_ssl_test_with_http_info(website_url, check_rate, alert_at, opts)
      data
    end

    # Create an SSL check
    # Creates an SSL check with the given parameters.
    # @param website_url [String] URL of the server under test. Must begin with https://
    # @param check_rate [SSLTestCheckRate]
    # @param alert_at [Array<Integer>] List representing when alerts should be sent (days). Must be exactly 3 numerical values
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :alert_broken Whether to enable alerts when SSL certificate issues are found (default to false)
    # @option opts [Boolean] :alert_expiry Whether to enable alerts when the SSL certificate is to expire (default to false)
    # @option opts [Boolean] :alert_mixed Whether to enable alerts when mixed content is found (default to false)
    # @option opts [Boolean] :alert_reminder Whether to enable alert reminders (default to false)
    # @option opts [Array<String>] :contact_groups List of contact group IDs
    # @option opts [Boolean] :follow_redirects Whether to follow redirects when testing. Disabled by default (default to false)
    # @option opts [String] :hostname Hostname of the server under test
    # @option opts [Boolean] :paused Whether the check should be run (default to false)
    # @option opts [String] :user_agent Custom user agent string set when testing
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def create_ssl_test_with_http_info(website_url, check_rate, alert_at, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SslApi.create_ssl_test ...'
      end
      # verify the required parameter 'website_url' is set
      if @api_client.config.client_side_validation && website_url.nil?
        raise ArgumentError, "Missing the required parameter 'website_url' when calling SslApi.create_ssl_test"
      end
      # verify the required parameter 'check_rate' is set
      if @api_client.config.client_side_validation && check_rate.nil?
        raise ArgumentError, "Missing the required parameter 'check_rate' when calling SslApi.create_ssl_test"
      end
      # verify the required parameter 'alert_at' is set
      if @api_client.config.client_side_validation && alert_at.nil?
        raise ArgumentError, "Missing the required parameter 'alert_at' when calling SslApi.create_ssl_test"
      end
      # resource path
      local_var_path = '/ssl'

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
      form_params['website_url'] = website_url
      form_params['check_rate'] = check_rate
      form_params['alert_at'] = @api_client.build_collection_param(alert_at, :csv)
      form_params['alert_broken'] = opts[:'alert_broken'] unless opts[:'alert_broken'].nil?
      form_params['alert_expiry'] = opts[:'alert_expiry'] unless opts[:'alert_expiry'].nil?
      form_params['alert_mixed'] = opts[:'alert_mixed'] unless opts[:'alert_mixed'].nil?
      form_params['alert_reminder'] = opts[:'alert_reminder'] unless opts[:'alert_reminder'].nil?
      form_params['contact_groups'] = @api_client.build_collection_param(opts[:'contact_groups'], :csv) unless opts[:'contact_groups'].nil?
      form_params['follow_redirects'] = opts[:'follow_redirects'] unless opts[:'follow_redirects'].nil?
      form_params['hostname'] = opts[:'hostname'] unless opts[:'hostname'].nil?
      form_params['paused'] = opts[:'paused'] unless opts[:'paused'].nil?
      form_params['user_agent'] = opts[:'user_agent'] unless opts[:'user_agent'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'SslApi.create_ssl_test',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SslApi#create_ssl_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Delete an SSL check
    # Deletes an SSL check with the given id.
    # @param test_id [String] Pagespeed check ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_ssl_test(test_id, opts = {})
      delete_ssl_test_with_http_info(test_id, opts)
      nil
    end

    # Delete an SSL check
    # Deletes an SSL check with the given id.
    # @param test_id [String] Pagespeed check ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_ssl_test_with_http_info(test_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SslApi.delete_ssl_test ...'
      end
      # verify the required parameter 'test_id' is set
      if @api_client.config.client_side_validation && test_id.nil?
        raise ArgumentError, "Missing the required parameter 'test_id' when calling SslApi.delete_ssl_test"
      end
      # resource path
      local_var_path = '/ssl/{test_id}'.sub('{' + 'test_id' + '}', CGI.escape(test_id.to_s))

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
        :operation => :'SslApi.delete_ssl_test',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SslApi#delete_ssl_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Retrieve an SSL check
    # Returns an SSL check with the given id.
    # @param test_id [String] SSL check ID
    # @param [Hash] opts the optional parameters
    # @return [SSLTestResponse]
    def get_ssl_test(test_id, opts = {})
      data, _status_code, _headers = get_ssl_test_with_http_info(test_id, opts)
      data
    end

    # Retrieve an SSL check
    # Returns an SSL check with the given id.
    # @param test_id [String] SSL check ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SSLTestResponse, Integer, Hash)>] SSLTestResponse data, response status code and response headers
    def get_ssl_test_with_http_info(test_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SslApi.get_ssl_test ...'
      end
      # verify the required parameter 'test_id' is set
      if @api_client.config.client_side_validation && test_id.nil?
        raise ArgumentError, "Missing the required parameter 'test_id' when calling SslApi.get_ssl_test"
      end
      # resource path
      local_var_path = '/ssl/{test_id}'.sub('{' + 'test_id' + '}', CGI.escape(test_id.to_s))

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
      return_type = opts[:debug_return_type] || 'SSLTestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'SslApi.get_ssl_test',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SslApi#get_ssl_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Get all SSL checks
    # Returns a list of SSL checks for an account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results (default to 1)
    # @option opts [Integer] :limit The number of SSL checks to return per page (default to 25)
    # @return [SSLTests]
    def list_ssl_tests(opts = {})
      data, _status_code, _headers = list_ssl_tests_with_http_info(opts)
      data
    end

    # Get all SSL checks
    # Returns a list of SSL checks for an account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results (default to 1)
    # @option opts [Integer] :limit The number of SSL checks to return per page (default to 25)
    # @return [Array<(SSLTests, Integer, Hash)>] SSLTests data, response status code and response headers
    def list_ssl_tests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SslApi.list_ssl_tests ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        raise ArgumentError, 'invalid value for "opts[:"page"]" when calling SslApi.list_ssl_tests, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        raise ArgumentError, 'invalid value for "opts[:"limit"]" when calling SslApi.list_ssl_tests, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        raise ArgumentError, 'invalid value for "opts[:"limit"]" when calling SslApi.list_ssl_tests, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/ssl'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] unless opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] unless opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SSLTests'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'SslApi.list_ssl_tests',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SslApi#list_ssl_tests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Update an SSL check
    # Updates an SSL check with the given parameters.
    # @param test_id [String] SSL check ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :website_url URL of the server under test. Must begin with https://
    # @option opts [SSLTestCheckRate] :check_rate
    # @option opts [Array<Integer>] :alert_at List representing when alerts should be sent (days). Must be exactly 3 numerical values
    # @option opts [Boolean] :alert_broken Whether to enable alerts when SSL certificate issues are found
    # @option opts [Boolean] :alert_expiry Whether to enable alerts when the SSL certificate is to expire
    # @option opts [Boolean] :alert_mixed Whether to enable alerts when mixed content is found
    # @option opts [Boolean] :alert_reminder Whether to enable alert reminders
    # @option opts [Array<String>] :contact_groups List of contact group IDs
    # @option opts [Boolean] :follow_redirects Whether to follow redirects when testing. Disabled by default
    # @option opts [String] :hostname Hostname of the server under test
    # @option opts [Boolean] :paused Whether the check should be run
    # @option opts [String] :user_agent Custom user agent string set when testing
    # @return [nil]
    def update_ssl_test(test_id, opts = {})
      update_ssl_test_with_http_info(test_id, opts)
      nil
    end

    # Update an SSL check
    # Updates an SSL check with the given parameters.
    # @param test_id [String] SSL check ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :website_url URL of the server under test. Must begin with https://
    # @option opts [SSLTestCheckRate] :check_rate
    # @option opts [Array<Integer>] :alert_at List representing when alerts should be sent (days). Must be exactly 3 numerical values
    # @option opts [Boolean] :alert_broken Whether to enable alerts when SSL certificate issues are found
    # @option opts [Boolean] :alert_expiry Whether to enable alerts when the SSL certificate is to expire
    # @option opts [Boolean] :alert_mixed Whether to enable alerts when mixed content is found
    # @option opts [Boolean] :alert_reminder Whether to enable alert reminders
    # @option opts [Array<String>] :contact_groups List of contact group IDs
    # @option opts [Boolean] :follow_redirects Whether to follow redirects when testing. Disabled by default
    # @option opts [String] :hostname Hostname of the server under test
    # @option opts [Boolean] :paused Whether the check should be run
    # @option opts [String] :user_agent Custom user agent string set when testing
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_ssl_test_with_http_info(test_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SslApi.update_ssl_test ...'
      end
      # verify the required parameter 'test_id' is set
      if @api_client.config.client_side_validation && test_id.nil?
        raise ArgumentError, "Missing the required parameter 'test_id' when calling SslApi.update_ssl_test"
      end
      # resource path
      local_var_path = '/ssl/{test_id}'.sub('{' + 'test_id' + '}', CGI.escape(test_id.to_s))

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
      form_params['website_url'] = opts[:'website_url'] unless opts[:'website_url'].nil?
      form_params['check_rate'] = opts[:'check_rate'] unless opts[:'check_rate'].nil?
      form_params['alert_at'] = @api_client.build_collection_param(opts[:'alert_at'], :csv) unless opts[:'alert_at'].nil?
      form_params['alert_broken'] = opts[:'alert_broken'] unless opts[:'alert_broken'].nil?
      form_params['alert_expiry'] = opts[:'alert_expiry'] unless opts[:'alert_expiry'].nil?
      form_params['alert_mixed'] = opts[:'alert_mixed'] unless opts[:'alert_mixed'].nil?
      form_params['alert_reminder'] = opts[:'alert_reminder'] unless opts[:'alert_reminder'].nil?
      form_params['contact_groups'] = @api_client.build_collection_param(opts[:'contact_groups'], :csv) unless opts[:'contact_groups'].nil?
      form_params['follow_redirects'] = opts[:'follow_redirects'] unless opts[:'follow_redirects'].nil?
      form_params['hostname'] = opts[:'hostname'] unless opts[:'hostname'].nil?
      form_params['paused'] = opts[:'paused'] unless opts[:'paused'].nil?
      form_params['user_agent'] = opts[:'user_agent'] unless opts[:'user_agent'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'SslApi.update_ssl_test',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SslApi#update_ssl_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end
  end
end
