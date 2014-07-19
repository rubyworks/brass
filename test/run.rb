require 'rubytest'
require 'lemon'
require 'rubytest/autorun'

Test.run do |run|
  run.loadpath 'lib'
  run.files << 'test/case_*.rb'
end

Test.run(:cov) do |run|
  run.loadpath 'lib'
  run.files << 'test/case_*.rb'
  require 'simplecov'
  SimpleCov.start do |cov|
    cov.coverage_dir = 'log/coverage'
  end
end

