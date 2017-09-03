require 'resque'
require 'resque/server'
require 'resque-etl'

# Extends Resque Web Based UI.
module ResqueEtl
  module Server
    include Resque::Etl::Helper

    def self.erb_path(filename)
      File.join(File.dirname(__FILE__), 'server', 'views', filename)
    end

    def self.public_path(filename)
      File.join(File.dirname(__FILE__), 'server', 'public', filename)
    end

    def self.included(base)

      base.class_eval do

        get '/etlsettings' do
          erb File.read(ResqueEtl::Server.erb_path('etl.erb'))
        end

        # post "/etl/save" do
        #   redirect u('etl')
        # end

      end
    end

    Resque::Server.tabs << 'EtlSettings'
  end

end

Resque.extend ResqueEtl
Resque::Server.class_eval do
  include ResqueEtl::Server
end