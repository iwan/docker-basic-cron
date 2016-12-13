require 'slack-notifier'

notifier = Slack::Notifier.new ENV["SLACK_WEB_HOOK"]
notifier.ping "Hello World"
