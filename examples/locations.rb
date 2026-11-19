# Lists the locations that checks can run from.
require 'statuscake'

token = ENV['STATUSCAKE_API_TOKEN']
abort 'STATUSCAKE_API_TOKEN not set in environment' if token.nil? || token.empty?

client = StatusCake::Client.new(token)

begin
  puts "PAGESPEED LOCATIONS: #{client.locations.list_pagespeed_monitoring_locations.data.inspect}"

  # The region codes are the values that an uptime check accepts as regions.
  puts "UPTIME LOCATIONS: #{client.locations.list_uptime_monitoring_locations.data.inspect}"
rescue StatusCake::ApiError => e
  puts e.message
  pp e.errors
  exit 1
end
