class Wrapper
  class Configuration
    attr_accessor :api_key
    attr_accessor :api_secret

    attr_accessor :access_token_key
    attr_accessor :access_token_secret

    attr_accessor :open_timeout
    attr_accessor :timeout

    attr_accessor :secure
    attr_accessor :proxy

    def fetch(*attributes)
      attributes.map { |attribute| send(attribute) }
    end
  end
end