# Creates, reads, updates, lists and deletes a pagespeed check.
require 'statuscake'

token = ENV['STATUSCAKE_API_TOKEN']
abort 'STATUSCAKE_API_TOKEN not set in environment' if token.nil? || token.empty?

client = StatusCake::Client.new(token)

begin
  # A contact group for the check to alert, deleted however the example ends.
  group = client.contact_groups.create_contact_group('Development Team')
  group_id = group.data.new_id
  begin
    res = client.pagespeed.create_pagespeed_test(
      'statuscake.com',
      'https://www.statuscake.com',
      86_400, # once a day
      'UK',
      alert_smaller: 10,
      alert_bigger: 100,
      alert_slower: 1000,
      contact_groups: [group_id],
      paused: true
    )
    test_id = res.data.new_id
    puts "PAGESPEED CHECK ID: #{test_id}"

    begin
      puts "PAGESPEED CHECK: #{client.pagespeed.get_pagespeed_test(test_id).data.inspect}"

      client.pagespeed.update_pagespeed_test(
        test_id,
        check_rate: 3600,
        contact_groups: [], # Remove all contact groups.
        paused: false
      )
      puts "UPDATED PAGESPEED CHECK: #{client.pagespeed.get_pagespeed_test(test_id).data.inspect}"

      puts "PAGESPEED CHECKS: #{client.pagespeed.list_pagespeed_tests.data.inspect}"
      puts "PAGESPEED CHECK HISTORY: #{client.pagespeed.list_pagespeed_test_history(test_id).data.inspect}"
    ensure
      client.pagespeed.delete_pagespeed_test(test_id)
    end
  ensure
    client.contact_groups.delete_contact_group(group_id)
  end
rescue StatusCake::ApiError => e
  puts e.message
  pp e.errors
  exit 1
end
