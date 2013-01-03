require "spec_helper"

describe Wrapper do
  describe "Wrapper.configure" do
    it "changes the configuration" do
      expect {
        Wrapper.configure do |config|
          config.open_timeout = 4
        end
      }.to change{ Wrapper.configuration.open_timeout }.from(nil).to(4)
    end
  end
end