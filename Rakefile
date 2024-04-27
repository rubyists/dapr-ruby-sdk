# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :wipelock do
  system 'rm -f Gemfile.lock'
end

task default: %i[spec wipelock]
