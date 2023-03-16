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

require 'cgi'

module StatusCake
  # :nodoc
  class ContactGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a contact group
    # Creates a contact group with the given parameters.
    # @param name [String] Name of the contact group
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :email_addresses List of email addresses
    # @option opts [Array<String>] :integrations List of integration IDs
    # @option opts [Array<String>] :mobile_numbers List of international format mobile phone numbers
    # @option opts [String] :ping_url URL or IP address of an endpoint to push uptime events. Currently this only supports HTTP GET endpoints
    # @return [APIResponse]
    def create_contact_group(name, opts = {})
      data, _status_code, _headers = create_contact_group_with_http_info(name, opts)
      data
    end

    # Create a contact group
    # Creates a contact group with the given parameters.
    # @param name [String] Name of the contact group
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :email_addresses List of email addresses
    # @option opts [Array<String>] :integrations List of integration IDs
    # @option opts [Array<String>] :mobile_numbers List of international format mobile phone numbers
    # @option opts [String] :ping_url URL or IP address of an endpoint to push uptime events. Currently this only supports HTTP GET endpoints
    # @return [Array<(APIResponse, Integer, Hash)>] APIResponse data, response status code and response headers
    def create_contact_group_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.create_contact_group ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling ContactGroupsApi.create_contact_group"
      end
      # resource path
      local_var_path = '/contact-groups'

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
      form_params['email_addresses'] = @api_client.build_collection_param(opts[:'email_addresses'], :csv) unless opts[:'email_addresses'].nil?
      form_params['integrations'] = @api_client.build_collection_param(opts[:'integrations'], :csv) unless opts[:'integrations'].nil?
      form_params['mobile_numbers'] = @api_client.build_collection_param(opts[:'mobile_numbers'], :csv) unless opts[:'mobile_numbers'].nil?
      form_params['ping_url'] = opts[:'ping_url'] unless opts[:'ping_url'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'ContactGroupsApi.create_contact_group',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#create_contact_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Delete a contact group
    # Deletes a contact group with the given id.
    # @param group_id [String] Contact group ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_contact_group(group_id, opts = {})
      delete_contact_group_with_http_info(group_id, opts)
      nil
    end

    # Delete a contact group
    # Deletes a contact group with the given id.
    # @param group_id [String] Contact group ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_contact_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.delete_contact_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling ContactGroupsApi.delete_contact_group"
      end
      # resource path
      local_var_path = '/contact-groups/{group_id}'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

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
        :operation => :'ContactGroupsApi.delete_contact_group',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#delete_contact_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Retrieve a contact group
    # Returns a contact group with the given id.
    # @param group_id [String] Contact group ID
    # @param [Hash] opts the optional parameters
    # @return [ContactGroupResponse]
    def get_contact_group(group_id, opts = {})
      data, _status_code, _headers = get_contact_group_with_http_info(group_id, opts)
      data
    end

    # Retrieve a contact group
    # Returns a contact group with the given id.
    # @param group_id [String] Contact group ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactGroupResponse, Integer, Hash)>] ContactGroupResponse data, response status code and response headers
    def get_contact_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.get_contact_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling ContactGroupsApi.get_contact_group"
      end
      # resource path
      local_var_path = '/contact-groups/{group_id}'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ContactGroupResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'ContactGroupsApi.get_contact_group',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#get_contact_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Get all contact groups
    # Returns a list of contact groups for an account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results (default to 1)
    # @option opts [Integer] :limit The number of contact groups to return per page (default to 25)
    # @return [ContactGroups]
    def list_contact_groups(opts = {})
      data, _status_code, _headers = list_contact_groups_with_http_info(opts)
      data
    end

    # Get all contact groups
    # Returns a list of contact groups for an account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results (default to 1)
    # @option opts [Integer] :limit The number of contact groups to return per page (default to 25)
    # @return [Array<(ContactGroups, Integer, Hash)>] ContactGroups data, response status code and response headers
    def list_contact_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.list_contact_groups ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        raise ArgumentError, 'invalid value for "opts[:"page"]" when calling ContactGroupsApi.list_contact_groups, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        raise ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactGroupsApi.list_contact_groups, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        raise ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactGroupsApi.list_contact_groups, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/contact-groups'

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
      return_type = opts[:debug_return_type] || 'ContactGroups'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'ContactGroupsApi.list_contact_groups',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#list_contact_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end

    # Update a contact group
    # Updates a contact group with the given parameters.
    # @param group_id [String] Contact group ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the contact group
    # @option opts [Array<String>] :email_addresses List of email addresses
    # @option opts [Array<String>] :integrations List of integration IDs
    # @option opts [Array<String>] :mobile_numbers List of international format mobile phone numbers
    # @option opts [String] :ping_url URL or IP address of an endpoint to push uptime events. Currently this only supports HTTP GET endpoints
    # @return [nil]
    def update_contact_group(group_id, opts = {})
      update_contact_group_with_http_info(group_id, opts)
      nil
    end

    # Update a contact group
    # Updates a contact group with the given parameters.
    # @param group_id [String] Contact group ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the contact group
    # @option opts [Array<String>] :email_addresses List of email addresses
    # @option opts [Array<String>] :integrations List of integration IDs
    # @option opts [Array<String>] :mobile_numbers List of international format mobile phone numbers
    # @option opts [String] :ping_url URL or IP address of an endpoint to push uptime events. Currently this only supports HTTP GET endpoints
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_contact_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.update_contact_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError, "Missing the required parameter 'group_id' when calling ContactGroupsApi.update_contact_group"
      end
      # resource path
      local_var_path = '/contact-groups/{group_id}'.sub('{' + 'group_id' + '}', CGI.escape(group_id.to_s))

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
      form_params['email_addresses'] = @api_client.build_collection_param(opts[:'email_addresses'], :csv) unless opts[:'email_addresses'].nil?
      form_params['integrations'] = @api_client.build_collection_param(opts[:'integrations'], :csv) unless opts[:'integrations'].nil?
      form_params['mobile_numbers'] = @api_client.build_collection_param(opts[:'mobile_numbers'], :csv) unless opts[:'mobile_numbers'].nil?
      form_params['ping_url'] = opts[:'ping_url'] unless opts[:'ping_url'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :'ContactGroupsApi.update_contact_group',
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#update_contact_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      [data, status_code, headers]
    end
  end
end
