# Creates, reads, updates, lists and deletes a maintenance window.
require 'statuscake'

token = ENV['STATUSCAKE_API_TOKEN']
abort 'STATUSCAKE_API_TOKEN not set in environment' if token.nil? || token.empty?

client = StatusCake::Client.new(token)

begin
  now = Time.now.utc

  res = client.maintenance_windows.create_maintenance_window(
    'Weekly maintenance',
    now + (3 * 3600), # when it ends
    now,              # when it starts
    'UTC',
    repeat_interval: '1w',
    tags: %w[testing]
  )
  window_id = res.data.new_id
  puts "MAINTENANCE WINDOW ID: #{window_id}"

  begin
    puts "MAINTENANCE WINDOW: #{client.maintenance_windows.get_maintenance_window(window_id).data.inspect}"

    client.maintenance_windows.update_maintenance_window(
      window_id,
      name: 'Monthly maintenance',
      start_at: now,
      end_at: now + (48 * 3600),
      repeat_interval: '1m'
    )
    puts "UPDATED MAINTENANCE WINDOW: #{client.maintenance_windows.get_maintenance_window(window_id).data.inspect}"

    puts "MAINTENANCE WINDOWS: #{client.maintenance_windows.list_maintenance_windows.data.inspect}"
  ensure
    client.maintenance_windows.delete_maintenance_window(window_id)
  end
rescue StatusCake::ApiError => e
  puts e.message
  pp e.errors
  exit 1
end
