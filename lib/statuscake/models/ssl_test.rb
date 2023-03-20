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

require 'date'
require 'time'

module StatusCake
  # :nodoc
  class SSLTest
    # SSL check ID
    attr_accessor :id

    # URL of the server under test
    attr_accessor :website_url

    attr_accessor :check_rate

    # List representing when alerts should be sent (days).
    attr_accessor :alert_at

    # Whether to enable alerts when SSL certificate issues are found
    attr_accessor :alert_broken

    # Whether to enable alerts when the SSL certificate is to expire
    attr_accessor :alert_expiry

    # Whether to enable alerts when mixed content is found
    attr_accessor :alert_mixed

    # Whether to enable alert reminders
    attr_accessor :alert_reminder

    # SSL certificate score (%)
    attr_accessor :certificate_score

    # SSL certificate status
    attr_accessor :certificate_status

    # SSL/TLS cipher suite belonging to the SSL certificate
    attr_accessor :cipher

    # SSL certificate cipher strength (%)
    attr_accessor :cipher_score

    # List of contact group IDs
    attr_accessor :contact_groups

    # Issuer of the SSL certificate
    attr_accessor :issuer_common_name

    attr_accessor :flags

    # Whether to follow redirects when testing. Disabled by default
    attr_accessor :follow_redirects

    # Hostname of the server under test
    attr_accessor :hostname

    # The last reminder to have been sent (days)
    attr_accessor :last_reminder

    # List of mixed content resources
    attr_accessor :mixed_content

    # Whether the check should be run
    attr_accessor :paused

    # When the SSL certificate was last updated (RFC3339 format)
    attr_accessor :updated_at

    # Custom user agent string set when testing
    attr_accessor :user_agent

    # SSL certificate validity start (RFC3339 format)
    attr_accessor :valid_from

    # SSL certificate validity end (RFC3339 format)
    attr_accessor :valid_until

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'website_url' => :'website_url',
        :'check_rate' => :'check_rate',
        :'alert_at' => :'alert_at',
        :'alert_broken' => :'alert_broken',
        :'alert_expiry' => :'alert_expiry',
        :'alert_mixed' => :'alert_mixed',
        :'alert_reminder' => :'alert_reminder',
        :'certificate_score' => :'certificate_score',
        :'certificate_status' => :'certificate_status',
        :'cipher' => :'cipher',
        :'cipher_score' => :'cipher_score',
        :'contact_groups' => :'contact_groups',
        :'issuer_common_name' => :'issuer_common_name',
        :'flags' => :'flags',
        :'follow_redirects' => :'follow_redirects',
        :'hostname' => :'hostname',
        :'last_reminder' => :'last_reminder',
        :'mixed_content' => :'mixed_content',
        :'paused' => :'paused',
        :'updated_at' => :'updated_at',
        :'user_agent' => :'user_agent',
        :'valid_from' => :'valid_from',
        :'valid_until' => :'valid_until',
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'website_url' => :'String',
        :'check_rate' => :'SSLTestCheckRate',
        :'alert_at' => :'Array<Integer>',
        :'alert_broken' => :'Boolean',
        :'alert_expiry' => :'Boolean',
        :'alert_mixed' => :'Boolean',
        :'alert_reminder' => :'Boolean',
        :'certificate_score' => :'Integer',
        :'certificate_status' => :'String',
        :'cipher' => :'String',
        :'cipher_score' => :'Integer',
        :'contact_groups' => :'Array<String>',
        :'issuer_common_name' => :'String',
        :'flags' => :'SSLTestFlags',
        :'follow_redirects' => :'Boolean',
        :'hostname' => :'String',
        :'last_reminder' => :'Integer',
        :'mixed_content' => :'Array<SSLTestMixedContent>',
        :'paused' => :'Boolean',
        :'updated_at' => :'Time',
        :'user_agent' => :'String',
        :'valid_from' => :'Time',
        :'valid_until' => :'Time',
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError, "The input argument (attributes) must be a hash in `StatusCake::SSLTest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError, "`#{k}` is not a valid attribute in `StatusCake::SSLTest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'website_url')
        self.website_url = attributes[:'website_url']
      end

      if attributes.key?(:'check_rate')
        self.check_rate = attributes[:'check_rate']
      end

      if attributes.key?(:'alert_at')
        if (value = attributes[:'alert_at']).is_a?(Array)
          self.alert_at = value
        end
      end

      if attributes.key?(:'alert_broken')
        self.alert_broken = attributes[:'alert_broken']
      end

      if attributes.key?(:'alert_expiry')
        self.alert_expiry = attributes[:'alert_expiry']
      end

      if attributes.key?(:'alert_mixed')
        self.alert_mixed = attributes[:'alert_mixed']
      end

      if attributes.key?(:'alert_reminder')
        self.alert_reminder = attributes[:'alert_reminder']
      end

      if attributes.key?(:'certificate_score')
        self.certificate_score = attributes[:'certificate_score']
      end

      if attributes.key?(:'certificate_status')
        self.certificate_status = attributes[:'certificate_status']
      end

      if attributes.key?(:'cipher')
        self.cipher = attributes[:'cipher']
      end

      if attributes.key?(:'cipher_score')
        self.cipher_score = attributes[:'cipher_score']
      end

      if attributes.key?(:'contact_groups')
        if (value = attributes[:'contact_groups']).is_a?(Array)
          self.contact_groups = value
        end
      end

      if attributes.key?(:'issuer_common_name')
        self.issuer_common_name = attributes[:'issuer_common_name']
      end

      if attributes.key?(:'flags')
        self.flags = attributes[:'flags']
      end

      if attributes.key?(:'follow_redirects')
        self.follow_redirects = attributes[:'follow_redirects']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.key?(:'last_reminder')
        self.last_reminder = attributes[:'last_reminder']
      end

      if attributes.key?(:'mixed_content')
        if (value = attributes[:'mixed_content']).is_a?(Array)
          self.mixed_content = value
        end
      end

      if attributes.key?(:'paused')
        self.paused = attributes[:'paused']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'user_agent')
        self.user_agent = attributes[:'user_agent']
      end

      if attributes.key?(:'valid_from')
        self.valid_from = attributes[:'valid_from']
      end

      if attributes.key?(:'valid_until')
        self.valid_until = attributes[:'valid_until']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @website_url.nil?
        invalid_properties.push('invalid value for "website_url", website_url cannot be nil.')
      end

      if @check_rate.nil?
        invalid_properties.push('invalid value for "check_rate", check_rate cannot be nil.')
      end

      if @alert_at.nil?
        invalid_properties.push('invalid value for "alert_at", alert_at cannot be nil.')
      end

      if @alert_broken.nil?
        invalid_properties.push('invalid value for "alert_broken", alert_broken cannot be nil.')
      end

      if @alert_expiry.nil?
        invalid_properties.push('invalid value for "alert_expiry", alert_expiry cannot be nil.')
      end

      if @alert_mixed.nil?
        invalid_properties.push('invalid value for "alert_mixed", alert_mixed cannot be nil.')
      end

      if @alert_reminder.nil?
        invalid_properties.push('invalid value for "alert_reminder", alert_reminder cannot be nil.')
      end

      if !@certificate_score.nil? && @certificate_score > 100
        invalid_properties.push('invalid value for "certificate_score", must be smaller than or equal to 100.')
      end

      if !@certificate_score.nil? && @certificate_score < 0
        invalid_properties.push('invalid value for "certificate_score", must be greater than or equal to 0.')
      end

      if !@cipher_score.nil? && @cipher_score > 100
        invalid_properties.push('invalid value for "cipher_score", must be smaller than or equal to 100.')
      end

      if !@cipher_score.nil? && @cipher_score < 0
        invalid_properties.push('invalid value for "cipher_score", must be greater than or equal to 0.')
      end

      if @contact_groups.nil?
        invalid_properties.push('invalid value for "contact_groups", contact_groups cannot be nil.')
      end

      if @follow_redirects.nil?
        invalid_properties.push('invalid value for "follow_redirects", follow_redirects cannot be nil.')
      end

      if !@last_reminder.nil? && @last_reminder < 0
        invalid_properties.push('invalid value for "last_reminder", must be greater than or equal to 0.')
      end

      if @mixed_content.nil?
        invalid_properties.push('invalid value for "mixed_content", mixed_content cannot be nil.')
      end

      if @paused.nil?
        invalid_properties.push('invalid value for "paused", paused cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @website_url.nil?
      return false if @check_rate.nil?
      return false if @alert_at.nil?
      return false if @alert_broken.nil?
      return false if @alert_expiry.nil?
      return false if @alert_mixed.nil?
      return false if @alert_reminder.nil?
      return false if !@certificate_score.nil? && @certificate_score > 100
      return false if !@certificate_score.nil? && @certificate_score < 0
      return false if !@cipher_score.nil? && @cipher_score > 100
      return false if !@cipher_score.nil? && @cipher_score < 0
      return false if @contact_groups.nil?
      return false if @follow_redirects.nil?
      return false if !@last_reminder.nil? && @last_reminder < 0
      return false if @mixed_content.nil?
      return false if @paused.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] certificate_score Value to be assigned
    def certificate_score=(certificate_score)
      if !certificate_score.nil? && certificate_score > 100
        raise ArgumentError, 'invalid value for "certificate_score", must be smaller than or equal to 100.'
      end

      if !certificate_score.nil? && certificate_score < 0
        raise ArgumentError, 'invalid value for "certificate_score", must be greater than or equal to 0.'
      end

      @certificate_score = certificate_score
    end

    # Custom attribute writer method with validation
    # @param [Object] cipher_score Value to be assigned
    def cipher_score=(cipher_score)
      if !cipher_score.nil? && cipher_score > 100
        raise ArgumentError, 'invalid value for "cipher_score", must be smaller than or equal to 100.'
      end

      if !cipher_score.nil? && cipher_score < 0
        raise ArgumentError, 'invalid value for "cipher_score", must be greater than or equal to 0.'
      end

      @cipher_score = cipher_score
    end

    # Custom attribute writer method with validation
    # @param [Object] last_reminder Value to be assigned
    def last_reminder=(last_reminder)
      if !last_reminder.nil? && last_reminder < 0
        raise ArgumentError, 'invalid value for "last_reminder", must be greater than or equal to 0.'
      end

      @last_reminder = last_reminder
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        id == other.id &&
        website_url == other.website_url &&
        check_rate == other.check_rate &&
        alert_at == other.alert_at &&
        alert_broken == other.alert_broken &&
        alert_expiry == other.alert_expiry &&
        alert_mixed == other.alert_mixed &&
        alert_reminder == other.alert_reminder &&
        certificate_score == other.certificate_score &&
        certificate_status == other.certificate_status &&
        cipher == other.cipher &&
        cipher_score == other.cipher_score &&
        contact_groups == other.contact_groups &&
        issuer_common_name == other.issuer_common_name &&
        flags == other.flags &&
        follow_redirects == other.follow_redirects &&
        hostname == other.hostname &&
        last_reminder == other.last_reminder &&
        mixed_content == other.mixed_content &&
        paused == other.paused &&
        updated_at == other.updated_at &&
        user_agent == other.user_agent &&
        valid_from == other.valid_from &&
        valid_until == other.valid_until
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, website_url, check_rate, alert_at, alert_broken, alert_expiry, alert_mixed, alert_reminder, certificate_score, certificate_status, cipher, cipher_score, contact_groups, issuer_common_name, flags, follow_redirects, hostname, last_reminder, mixed_content, paused, updated_at, user_agent, valid_from, valid_until].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize(Regexp.last_match(1), v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = StatusCake.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
