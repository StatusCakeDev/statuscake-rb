# Creates, reads, updates, lists and deletes a contact group.
require 'statuscake'

token = ENV['STATUSCAKE_API_TOKEN']
abort 'STATUSCAKE_API_TOKEN not set in environment' if token.nil? || token.empty?

client = StatusCake::Client.new(token)

begin
  res = client.contact_groups.create_contact_group(
    'Operations Team',
    email_addresses: %w[johnsmith@example.com janesmith@example.com],
    integrations: %w[1 2 3],
    mobile_numbers: %w[447712345678 447987462344],
    ping_url: 'https://ping.example.com'
  )
  group_id = res.data.new_id
  puts "CONTACT GROUP ID: #{group_id}"

  # The group is deleted however the rest of the example ends.
  begin
    puts "CONTACT GROUP: #{client.contact_groups.get_contact_group(group_id).data.inspect}"

    client.contact_groups.update_contact_group(
      group_id,
      name: 'Development Team',
      email_addresses: [], # Remove all email addresses.
      integrations: %w[4 5 6],
      mobile_numbers: %w[447891998195],
      ping_url: 'https://ping.example.com/groups'
    )
    puts "UPDATED CONTACT GROUP: #{client.contact_groups.get_contact_group(group_id).data.inspect}"

    puts "CONTACT GROUPS: #{client.contact_groups.list_contact_groups.data.inspect}"
  ensure
    client.contact_groups.delete_contact_group(group_id)
  end
rescue StatusCake::ApiError => e
  puts e.message
  pp e.errors
  exit 1
end
