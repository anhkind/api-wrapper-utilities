require_relative "setup"
Dir[File.join(SPEC_ROOT, "spec/support/**/*.rb")].each { |f| require f }

require "api-wrapper-utilities"

RSpec.configure do |config|
  config.before(:each) do

  end
end

def benchmark(name = "benchmark", &block)
  time = Time.now
  return_value = block.call
  puts "#{name} (#{Time.now - time})"
  return_value
end