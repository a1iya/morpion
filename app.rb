require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)

require 'app/application'
require 'app/game'
require 'app/board'

Application.new.perform
