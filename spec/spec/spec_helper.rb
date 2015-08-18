require "rspec"
require "person"
require 'rspec/its'
require "car"
require "account"
require "mocha"

Dir[File.dirname(__FILE__) +"/support/**/*.rb"].each do |file|
    require file
end

RSpec.configure do |config|
	#config.include RspecHelpers::InstanceMethods
	#config.extend RspecHelpers::ClassMethods
	#config.mock_framework = :mocha
end

	
