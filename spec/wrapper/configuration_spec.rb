require "spec_helper"

describe Wrapper::Configuration do
  before do
    @configuration = Wrapper::Configuration.new
  end

  describe "#fetch" do
    it "fetches an array of specified attributes" do
      @configuration.api_key    = 'api_key'
      @configuration.api_secret = 'api_secret'

      expect( @configuration.fetch(:api_key, :api_secret)).to eq([@configuration.api_key, @configuration.api_secret])
    end
  end

  it "responds to certain attributes" do
    attributes = [
      :api_key,
      :api_secret,
      :access_token_key,
      :access_token_secret,
      :open_timeout,
      :timeout,
      :secure,
      :proxy
    ]
    attributes.each do |attribute|
      expect(@configuration).to respond_to(attribute)
    end
  end
end