#!/usr/bin/env rackup

app = ->(env) do
  puts "config.ru __dir__ #{__dir__.inspect}"
  puts "config.ru Dir.pwd #{Dir.pwd.inspect}"
  revpath = File.expand_path("REVISION")
  puts "config.ru revpath #{revpath.inspect}"
  rev = File.read(revpath)
  puts "config.ru rev #{rev.inspect}"

  [200, {"Content-Type" => "text/plain"}, [rev]]
end

run app
