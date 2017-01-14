#!/usr/bin/env rake
require 'rubygems'
require 'bundler'
require 'rake'
require 'appraisal'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:cucumber) do |t|
  t.cucumber_opts = ['--format', (ENV['CUCUMBER_FORMAT'] || 'progress')]
end

task test_suite: [:cucumber]

if !ENV['APPRAISAL_INITIALIZED'] && !ENV['TRAVIS']
  task :default => :appraisal
else
  task default: :test_suite
end
