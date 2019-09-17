# frozen_string_literal: true

ENV['RAILS_ENV'] = 'test'

require File.expand_path('../dummy/config/environment.rb',  __FILE__)

require 'rspec/rails'

Dir[File.join(File.dirname(__FILE__), '/support/**/*.rb')].each { |file| require file }

load "#{File.dirname(__FILE__)}/../lib/solidus_oxxo_pay/factories.rb"
require 'spree/testing_support/controller_requests'
require 'solidus_support/extension/feature_helper'

RSpec.configure do |config|
  config.include Spree::TestingSupport::ControllerRequests, type: :controller
end
