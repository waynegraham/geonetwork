require "bundler/gem_tasks"
require "rake/testtask"

task :default => :test

Rake::TestTask.new do |test|
  test.test_files = FileList['spec/lib/geonetwork/*_spec.rb']
  test.verbose = true
end
