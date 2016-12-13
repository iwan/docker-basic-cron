set :job_template, "sh -l -c ':job'"

if ENV["TRAIN_ENV"]=="test"
  every 2.minutes do
    command "ruby /usr/src/app/slack_notify_hello.rb"
  end

else
  every 1.day, :at => '0:15 am' do
    command "/usr/bin/my_great_command1"
  end


  every 1.day, :at => '0:20 am' do
    command "/usr/bin/my_great_command2"
  end

end