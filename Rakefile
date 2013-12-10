$:.unshift File.dirname(__FILE__) + 'lib'
require 'rspec/core/rake_task'
require "bundler/gem_tasks"
RSpec::Core::RakeTask.new

task :default => :spec

desc"Generar documentacion RDOC"
task :rdoc do
  sh "rdoc"
end
