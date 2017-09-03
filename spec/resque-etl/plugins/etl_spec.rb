require 'spec_helper'
require 'timecop'

describe Resque::Plugins::Etl do

  it "should be compliance with Resque::Plugin document" do
    expect { Resque::Plugin.lint(Resque::Plugins::History) }.to_not raise_error
  end

  it "should call some method and return the correct response" do
  end

end

