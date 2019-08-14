require 'http'
require 'json'
require "pry"

<<<<<<< HEAD
response = HTTP.post("https://slack.com/api/auth.test")
=======
# ユーザー名を入力
USERNAME = ""

response = HTTP.post("https://slack.com/api/chat.postMessage", params: {
    token: ENV['SLACK_API_TOKEN'],
    channel: USERNAME,
    text: "test",
    as_user: false,
    username: "slack_bot"
  })

>>>>>>> aaf35f30bc79e62946edf97673e83bae7a736a4e
puts JSON.pretty_generate(JSON.parse(response.body))
