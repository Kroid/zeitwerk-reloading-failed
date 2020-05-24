ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
require 'bundler/setup'

ENV['RACK_ENV'] ||= 'development'
Bundler.require(*[:default, ENV['RACK_ENV']])
