namespace :db do

  desc "drops, creates, migrates, and seeds database"
  task :nuke_pave => %w(environment drop create migrate seed) do
    unless Rails.env == 'production'
      # Rake::Task['db:sample'].invoke unless ENV['CI']
      puts `cat lib/assets/nuke_pave_message.txt`
    end
  end

  # task :sample => %w(environment) do
  #   load File.join(Rails.root, "db", "samples.rb")
  # end

end
