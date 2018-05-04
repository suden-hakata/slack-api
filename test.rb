require 'http'
require 'json'
require "pry"

response = HTTP.post("https://slack.com/api/auth.test")
puts JSON.pretty_generate(JSON.parse(response.body))
