# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
set :output, {:error => '~/Desktop/watchers_of_quakes_db.error.log', :standard => '~/Desktop/watchers_of_quakes_db.standard.log'}

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
 every 1.minute do
    command "ruby /Users/emirozbir/Desktop/ruby/watchers_of_quakes/scripts/parser.rb"
 end

# Learn more: http://github.com/javan/whenever
