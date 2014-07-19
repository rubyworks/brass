#!/usr/bin/env ruby

# Create coverage report.
QED.configure 'cov' do
  require 'simplecov'
  SimpleCov.start do
    coverage_dir 'log/coverage'
    #add_group "RSpec", "lib/assay/rspec.rb"
  end
end

