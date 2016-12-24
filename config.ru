require 'bundler' # requires stuff from Gemfile
Bundler.require

ENV['RACK_ENV'] ||= 'development'

DB = Sequel.connect(ENV['DATABASE_URL'] || 'sqlite://db/database.db')

require './app'
require './lib/image_uploader'
require './lib/image'

run App
