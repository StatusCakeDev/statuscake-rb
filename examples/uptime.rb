# Creates, reads, updates, lists and deletes an uptime check.
require 'statuscake'

token = ENV['STATUSCAKE_API_TOKEN']
abort 'STATUSCAKE_API_TOKEN not set in environment' if token.nil? || token.empty?

client = StatusCake::Client.new(token)

begin
  # A contact group for the check to alert, deleted however the example ends.
  group = client.contact_groups.create_contact_group('Development Team')
  group_id = group.data.new_id
  begin
    res = client.uptime.create_uptime_test(
      'statuscake.com',
      'HTTP',
      'https://www.statuscake.com',
      900, # every fifteen minutes
      contact_groups: [group_id],
      enable_ssl_alert: true,
      follow_redirects: true,
      paused: true,
      regions: %w[london],
      tags: %w[testing]
    )
    test_id = res.data.new_id
    puts "UPTIME CHECK ID: #{test_id}"

    begin
      puts "UPTIME CHECK: #{client.uptime.get_uptime_test(test_id).data.inspect}"

      client.uptime.update_uptime_test(
        test_id,
        check_rate: 1800,
        paused: false,
        regions: %w[london paris]
      )
      puts "UPDATED UPTIME CHECK: #{client.uptime.get_uptime_test(test_id).data.inspect}"

      puts "UPTIME CHECKS: #{client.uptime.list_uptime_tests.data.inspect}"
      puts "UPTIME CHECK HISTORY: #{client.uptime.list_uptime_test_history(test_id).data.inspect}"
      puts "UPTIME CHECK PERIODS: #{client.uptime.list_uptime_test_periods(test_id).data.inspect}"
      puts "SENT ALERTS: #{client.uptime.list_uptime_test_alerts(test_id).data.inspect}"
    ensure
      client.uptime.delete_uptime_test(test_id)
    end
  ensure
    client.contact_groups.delete_contact_group(group_id)
  end
rescue StatusCake::ApiError => e
  puts e.message
  pp e.errors
  exit 1
end
