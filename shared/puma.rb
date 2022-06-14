port 3000
puts "[puma.rb] __dir__ #{__dir__.inspect}"
puts "[puma.rb] expanded #{File.expand_path(__dir__)}"

app_dir = File.expand_path(__dir__)
directory app_dir
rackup File.join(app_dir, "config.ru")
