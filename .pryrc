#!/usr/bin/env ruby
alias q exit

require 'date'
require 'fileutils'
require 'net/http'
require 'json'
require 'yaml'
require 'time'
require 'securerandom'
require 'open-uri'

Pry.config.prompt = proc do |obj, level, _|
  prompt = ""
  prompt << "#{Rails.version}@" if defined?(Rails)
  prompt << "#{RUBY_VERSION}"
  "#{prompt} (#{obj})> "
end

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'
