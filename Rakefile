require 'bundler'
Bundler::GemHelper.install_tasks

require "rspec/core/rake_task"

desc "Run all examples"
RSpec::Core::RakeTask.new(:spec)

task :default => :spec


begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "resque-etl"
    gem.summary = %Q{Edit settings for tenanted ETL.}
    gem.description = %Q{Edit settings for tenanted ETL.}
    gem.email = "rault@marketron.com"
    gem.homepage = "https://github.com/rault/resque-etl"
    gem.authors = ["Robert Ault"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end