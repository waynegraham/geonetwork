module Geonetwork
  class Server
    include HTTParty
    base_uri 'libsvr35.lib.virginia.edu/geonetwork'

    def capabilities
      @capabilities ||= get_capabilities
    end

    def method_missing(name, *args, &block)
      if capabilities.has_key?(name.to_s)
        capabilities[name.to_s]
      else
        super
      end
    end

    private
    def get_capabilities(options={})
      self.class.get('/srv/en/csw/?request=GetCapabilities&service=CSW')
    end

  end
end
