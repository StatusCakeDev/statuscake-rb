# Creates, reads, updates, lists and deletes an SSL check.
require 'statuscake'

token = ENV['STATUSCAKE_API_TOKEN']
abort 'STATUSCAKE_API_TOKEN not set in environment' if token.nil? || token.empty?

client = StatusCake::Client.new(token)

begin
  # A contact group for the check to alert, deleted however the example ends.
  group = client.contact_groups.create_contact_group('Development Team')
  group_id = group.data.new_id
  begin
    res = client.ssl.create_ssl_test(
      'https://www.statuscake.com',
      300, # every five minutes
      [1, 7, 30],
      alert_broken: true,
      alert_expiry: true,
      alert_mixed: true,
      alert_reminder: true,
      contact_groups: [group_id],
      follow_redirects: true,
      paused: true
    )
    test_id = res.data.new_id
    puts "SSL CHECK ID: #{test_id}"

    begin
      puts "SSL CHECK: #{client.ssl.get_ssl_test(test_id).data.inspect}"

      client.ssl.update_ssl_test(
        test_id,
        check_rate: 3600,
        contact_groups: [], # Remove all contact groups.
        paused: false
      )
      puts "UPDATED SSL CHECK: #{client.ssl.get_ssl_test(test_id).data.inspect}"

      puts "SSL CHECKS: #{client.ssl.list_ssl_tests.data.inspect}"
    ensure
      client.ssl.delete_ssl_test(test_id)
    end
  ensure
    client.contact_groups.delete_contact_group(group_id)
  end
rescue StatusCake::ApiError => e
  puts e.message
  pp e.errors
  exit 1
end
