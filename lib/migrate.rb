require 'sequel'

ENV['RACK_ENV'] ||= 'development' # RACK_ENV=production ruby lib/migrate.rb

DB = Sequel.connect "sqlite://db/#{ENV['RACK_ENV']}.sqlite3"

DB.create_table :images do
  primary_key :id
  String :file
  String :title
end