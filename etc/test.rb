require 'lemon'

Test.run(:default) do |run|
  run.files << 'test/case_*.rb'
end

Test.run(:cov) do |run|
  run.files << 'test/case_*.rb'
  SimpleCov.start do |cov|
    cov.coverage_dir = 'log/coverage'
  end
end

