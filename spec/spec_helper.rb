$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'formtastic-cocoon'
require 'rspec/core'
require 'simplecov'

SimpleCov.start 'rails'

RSpec.configure do |c|
  c.color_enabled = true
end