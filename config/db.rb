namespace :db do
  desc "Database initialization."
  task :init do
    run "cd #{current_path} && rake db:drop"
    run "cd #{current_path} && rake db:create"
    run "cd #{current_path} && rake db:migrate"
  end
end
