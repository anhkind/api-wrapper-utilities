require 'wrapper/configuration'

class Wrapper
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration if block_given?
    @client = nil
    configuration
  end
end