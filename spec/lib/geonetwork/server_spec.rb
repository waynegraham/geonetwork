require_relative '../../spec_helper'

describe Geonetwork::Server do
  describe "default attributes" do
    it "must include httparty methods" do
      Geonetwork::Server.must_include HTTParty
    end

    it "must have the base url set to the Geonetwork API endpoint" do
      Geonetwork::Server.base_uri.must_equal 'http://libsvr35.lib.virginia.edu/geonetwork'
    end
  end

  describe "GET capabilities" do
    before do
      VCR.insert_cassette 'server', :record => :new_episodes
    end
    after do
      VCR.eject_cassette
    end

    it "records the fixture" do
      Geonetwork::Server.get('/srv/en/csw?request=GetCapabilities&service=CSW')
    end

  end
end
