FROM iwan/ruby-alpine:latest
MAINTAINER Iwan Buetti <iwan.buetti@gmail.com>

RUN gem update bundler

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/ 
RUN bundle install

COPY slack_notify_hello.rb /usr/src/app/
RUN mkdir /usr/src/app/config
COPY config/schedule.rb /usr/src/app/config/

RUN touch /var/log/cron.log


CMD whenever --update-crontab && crond && tail -f /var/log/cron.log
