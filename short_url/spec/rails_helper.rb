# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'mock'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  #config.mock_with :rspec
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

    config.use_transactional_fixtures = true
    
  
  config.infer_spec_type_from_file_location!
  config.mock_with :rspec do |mocks|
    #mocks.syntax= :should
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
     #`true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

end

