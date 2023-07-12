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

require 'date'
require 'time'

module StatusCake
  # :nodoc
  class PagespeedTest
    # Pagespeed check ID
    attr_accessor :id

    # Name of the check
    attr_accessor :name

    # URL, FQDN, or IP address of the website under test
    attr_accessor :website_url

    attr_accessor :check_rate

    # An alert will be sent if the size of the page is larger than this value (kb). A value of 0 prevents alerts being sent.
    attr_accessor :alert_bigger

    # An alert will be sent if the load time of the page exceeds this value (ms). A value of 0 prevents alerts being sent
    attr_accessor :alert_slower

    # An alert will be sent if the size of the page is smaller than this value (kb). A value of 0 prevents alerts being sent
    attr_accessor :alert_smaller

    # List of contact group IDs
    attr_accessor :contact_groups

    attr_accessor :latest_stats

    # Assigned monitoring location on which checks will be run
    attr_accessor :location

    # Whether the check should be run
    attr_accessor :paused

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'website_url' => :'website_url',
        :'check_rate' => :'check_rate',
        :'alert_bigger' => :'alert_bigger',
        :'alert_slower' => :'alert_slower',
        :'alert_smaller' => :'alert_smaller',
        :'contact_groups' => :'contact_groups',
        :'latest_stats' => :'latest_stats',
        :'location' => :'location',
        :'paused' => :'paused',
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
        :'name' => :'String',
        :'website_url' => :'String',
        :'check_rate' => :'PagespeedTestCheckRate',
        :'alert_bigger' => :'Integer',
        :'alert_slower' => :'Integer',
        :'alert_smaller' => :'Integer',
        :'contact_groups' => :'Array<String>',
        :'latest_stats' => :'PagespeedTestStats',
        :'location' => :'String',
        :'paused' => :'Boolean',
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
        raise ArgumentError, "The input argument (attributes) must be a hash in `StatusCake::PagespeedTest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError, "`#{k}` is not a valid attribute in `StatusCake::PagespeedTest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'website_url')
        self.website_url = attributes[:'website_url']
      end

      if attributes.key?(:'check_rate')
        self.check_rate = attributes[:'check_rate']
      end

      if attributes.key?(:'alert_bigger')
        self.alert_bigger = attributes[:'alert_bigger']
      end

      if attributes.key?(:'alert_slower')
        self.alert_slower = attributes[:'alert_slower']
      end

      if attributes.key?(:'alert_smaller')
        self.alert_smaller = attributes[:'alert_smaller']
      end

      if attributes.key?(:'contact_groups')
        if (value = attributes[:'contact_groups']).is_a?(Array)
          self.contact_groups = value
        end
      end

      if attributes.key?(:'latest_stats')
        self.latest_stats = attributes[:'latest_stats']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'paused')
        self.paused = attributes[:'paused']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @website_url.nil?
        invalid_properties.push('invalid value for "website_url", website_url cannot be nil.')
      end

      if @check_rate.nil?
        invalid_properties.push('invalid value for "check_rate", check_rate cannot be nil.')
      end

      if @alert_bigger.nil?
        invalid_properties.push('invalid value for "alert_bigger", alert_bigger cannot be nil.')
      end

      if @alert_bigger < 0
        invalid_properties.push('invalid value for "alert_bigger", must be greater than or equal to 0.')
      end

      if @alert_slower.nil?
        invalid_properties.push('invalid value for "alert_slower", alert_slower cannot be nil.')
      end

      if @alert_slower < 0
        invalid_properties.push('invalid value for "alert_slower", must be greater than or equal to 0.')
      end

      if @alert_smaller.nil?
        invalid_properties.push('invalid value for "alert_smaller", alert_smaller cannot be nil.')
      end

      if @alert_smaller < 0
        invalid_properties.push('invalid value for "alert_smaller", must be greater than or equal to 0.')
      end

      if @contact_groups.nil?
        invalid_properties.push('invalid value for "contact_groups", contact_groups cannot be nil.')
      end

      if @location.nil?
        invalid_properties.push('invalid value for "location", location cannot be nil.')
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
      return false if @name.nil?
      return false if @website_url.nil?
      return false if @check_rate.nil?
      return false if @alert_bigger.nil?
      return false if @alert_bigger < 0
      return false if @alert_slower.nil?
      return false if @alert_slower < 0
      return false if @alert_smaller.nil?
      return false if @alert_smaller < 0
      return false if @contact_groups.nil?
      return false if @location.nil?
      return false if @paused.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] alert_bigger Value to be assigned
    def alert_bigger=(alert_bigger)
      if alert_bigger.nil?
        raise ArgumentError, 'alert_bigger cannot be nil'
      end

      if alert_bigger < 0
        raise ArgumentError, 'invalid value for "alert_bigger", must be greater than or equal to 0.'
      end

      @alert_bigger = alert_bigger
    end

    # Custom attribute writer method with validation
    # @param [Object] alert_slower Value to be assigned
    def alert_slower=(alert_slower)
      if alert_slower.nil?
        raise ArgumentError, 'alert_slower cannot be nil'
      end

      if alert_slower < 0
        raise ArgumentError, 'invalid value for "alert_slower", must be greater than or equal to 0.'
      end

      @alert_slower = alert_slower
    end

    # Custom attribute writer method with validation
    # @param [Object] alert_smaller Value to be assigned
    def alert_smaller=(alert_smaller)
      if alert_smaller.nil?
        raise ArgumentError, 'alert_smaller cannot be nil'
      end

      if alert_smaller < 0
        raise ArgumentError, 'invalid value for "alert_smaller", must be greater than or equal to 0.'
      end

      @alert_smaller = alert_smaller
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        id == other.id &&
        name == other.name &&
        website_url == other.website_url &&
        check_rate == other.check_rate &&
        alert_bigger == other.alert_bigger &&
        alert_slower == other.alert_slower &&
        alert_smaller == other.alert_smaller &&
        contact_groups == other.contact_groups &&
        latest_stats == other.latest_stats &&
        location == other.location &&
        paused == other.paused
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, website_url, check_rate, alert_bigger, alert_slower, alert_smaller, contact_groups, latest_stats, location, paused].hash
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
