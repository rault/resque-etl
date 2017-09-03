require 'spec_helper'
require 'timecop'


describe ResqueEtl::Server do
  include Rack::Test::Methods

  def app
    @app ||= Resque::Server.new
  end

  let :queues do
    Resque.redis.sadd(:queues, "tenant_etl")
  end

  # testing queueing from rspec
  before do
    queues
    Resque.enqueue(TenantEtl, {"schema_name"=>"acme","data_source_names"=>[]})
    job = Resque.reserve('tenant_etl')
    Timecop.freeze(2017, 8, 31, 10, 12) do
      job.perform
    end
  end

  # web UI tests
  it "should respond to /etl" do
    get '/etl'
    last_response.should be_ok
    last_response.body.should include("Etl Settings")
  end

  it "should respond to save ETL" do
    get '/etl'
    last_response.body.should include("Etl Settings")
    post "/etl/save"
    last_response.should be_redirect
    get '/etl'
    last_response.body.should_not include("New ETL settings saved and schedules reloaded")
  end

  it "should not allow an incorrect cron format" do
    get '/etl'
    # there could be no end to testing this...
  end

end

class TenantEtl
  extend Resque::Plugins::Etl
  @queue = :tenant_etl

  def self.perform(*args)
  end
end
