source "http://rubygems.org"

# Specify your gem's dependencies in resque-etl.gemspec
# gemspec

ruby "2.1.5"

gem "resque", "1.27.4"

group :development, :test do
  gem "rake", "10.4.2"
  #gem "bundler", "1.7.10"
  gem "jeweler", "2.0.1"
  gem "rspec-rails", "3.1.0"
  gem "rspec", "3.1.0"
  gem "rack-test", "0.6.3"
  gem "timecop", "0.7.1"
  gem "rack", "1.5.2"
end

# bundler --version
# gem install bundler --version '1.7.10'
# gem uninstall bundler, leave only 1.7.10
# you can switch back to whatever version after building this gem

# create the gemspec using jeweler:
# rake gemspec
# *removed jeweler*

# build & install the gem:
# MAKE SURE THIS NEXT LINE EXISTS IN THE GEM SPEC (ADD MANUALLY)
# s.files = Dir['**/*'].keep_if { |file| File.file?(file) }
# THEN...
# gem build resque-etl.gemspec
# gem install resque-etl-1.0.0.gem

# uninstall it:
# gem uninstall resque-etl
# gem cleanup resque-etl

# using a DB in a gem, can-do if it's an engine, which resque plugins ARE
# https://stackoverflow.com/a/31629846
# maybe something like this?
# https://stackoverflow.com/a/6950121