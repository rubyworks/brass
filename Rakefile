require 'rubygems/package_task'

gemspec = Gem::Specification.load('brass.gemspec')

Gem::PackageTask.new(gemspec) do |pkg|
  pkg.need_zip = false
  pkg.need_tar = false
end

desc "Run tests"
task :test do
  ruby 'test/run.rb'
end

task :default => :test
