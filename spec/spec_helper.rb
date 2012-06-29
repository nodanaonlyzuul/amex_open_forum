# TODO: Make this nicer
require File.expand_path(File.join(File.dirname(__FILE__),'..','lib','amex_open_forum.rb'))

# require "httparty"
#
# require 'spec/autorun'
# require 'fakeweb'

RSpec.configure do |config|
  # config.include HTTParty::StubResponse
  # config.include HTTParty::SSLTestHelper
  #
  # config.before(:suite) do
  #   FakeWeb.allow_net_connect = false
  # end
  #
  # config.after(:suite) do
  #   FakeWeb.allow_net_connect = true
  # end
end