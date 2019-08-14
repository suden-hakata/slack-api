require 'http'
require 'json'
require "pry"

response = HTTP.post("https://slack.com/api/auth.test")

# ユーザー名を入力
USERNAME = ""

response = HTTP.post("https://slack.com/api/chat.postMessage", params: {
    token: ENV['SLACK_API_TOKEN'],
    channel: USERNAME,
    text: "test",
    as_user: false,
    username: "slack_bot"
  })

puts JSON.pretty_generate(JSON.parse(response.body))
