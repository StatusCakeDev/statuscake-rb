# Creates, reads, updates, lists and deletes a heartbeat check.
require 'statuscake'

token = ENV['STATUSCAKE_API_TOKEN']
abort 'STATUSCAKE_API_TOKEN not set in environment' if token.nil? || token.empty?

client = StatusCake::Client.new(token)

begin
  # A contact group for the check to alert, deleted however the example ends.
  group = client.contact_groups.create_contact_group('Development Team')
  group_id = group.data.new_id
  begin
    res = client.heartbeat.create_heartbeat_test(
      'statuscake.com',
      1800,
      contact_groups: [group_id],
      paused: true,
      tags: %w[testing]
    )
    test_id = res.data.new_id
    puts "HEARTBEAT CHECK ID: #{test_id}"

    begin
      puts "HEARTBEAT CHECK: #{client.heartbeat.get_heartbeat_test(test_id).data.inspect}"

      client.heartbeat.update_heartbeat_test(test_id, period: 3600, paused: false)
      puts "UPDATED HEARTBEAT CHECK: #{client.heartbeat.get_heartbeat_test(test_id).data.inspect}"

      puts "HEARTBEAT CHECKS: #{client.heartbeat.list_heartbeat_tests.data.inspect}"
    ensure
      client.heartbeat.delete_heartbeat_test(test_id)
    end
  ensure
    client.contact_groups.delete_contact_group(group_id)
  end
rescue StatusCake::ApiError => e
  puts e.message
  pp e.errors
  exit 1
end
