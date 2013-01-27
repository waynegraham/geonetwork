require_relative '../lib/geonetwork'

require 'minitest/autorun'
require 'webmock/minitest'
require 'vcr'
require 'turn'

Turn.config do |config|
  config.format = :outline
  config.trace = true
  config.natural = true
end

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/geonetwork_cassettes'
  config.hook_into :webmock
end
