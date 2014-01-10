rails_env = ENV['RAILS_ENV'] || 'production'

working_directory "/home/akademirails/indonesian-handmade/current"
pid "/home/akademirails/indonesian-handmade/shared/tmp/pids/unicorn.pid"
stderr_path "/home/akademirails/indonesian-handmade/shared/log/unicorn.log"
stdout_path "/home/akademirails/indonesian-handmade/shared/log/unicorn.log"

listen "/tmp/unicorn.indonesian-handmade.sock"
worker_processes 2
timeout 90

preload_app true

before_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end

  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end
end

after_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end

end
