namespace :project do
  desc "Start server through rake."
  task :start do
    run "cd #{current_path} && rails --version"
    run "cd #{current_path} && rails server -d"
  end

  desc "Stop server through pid kill."
  task :stop do
    pid_path = "tmp/pids/server.pid"
    pid_file = nil

    run "cd #{current_path} && cat #{pid_path}" do |c, s, d|
      pid_file = d
    end

    unless pid_file.nil?
      run "kill -9 #{pid_file}"
      run "cd #{current_path} && rm -f #{pid_path}"
    end
  end
end
