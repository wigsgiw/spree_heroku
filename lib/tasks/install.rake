namespace :spree_heroku do
  desc "Copies all migrations and assets (NOTE: This will be obsolete with Rails 3.1)"
  task :install do
    Rake::Task['spree_heroku:install:config'].invoke
  end

  namespace :install do
    desc "Copies all configuration files (NOTE: This will be obsolete with Rails 3.1)"
    task :config do
      aws_s3_example_filename = 'aws_s3.yml.example'
      source = File.join(File.dirname(__FILE__), '..', '..', 'config', aws_s3_example_filename)
      destination = File.join(Rails.root, 'config', aws_s3_example_filename)
      Spree::FileUtilz.mirror_files(source, destination)
    end
  end

end
