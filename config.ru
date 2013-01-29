require './application.rb'

set :run, false
set :environment, :production

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a+")
$stdout.reopen(log)
$stderr.reopen(log)
use ActiveRecord::ConnectionAdapters::ConnectionManagement

run DSpaceCsvUi 
