# frozen_string_literal: true

require 'chefspec'
require 'chefspec/berkshelf'

ChefSpec::Coverage.start!

RSpec.configure do |config|
  config.color = true               # Use color in STDOUT
  config.formatter = :documentation # Use the specified formatter
  config.log_level = :error         # Avoid deprecation notice SPAM
end
