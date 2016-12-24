require 'sequel'

ENV['RACK_ENV'] ||= 'development' # RACK_ENV=production ruby lib/migrate.rb

DB = Sequel.connect(ENV['DATABASE_URL'] || 'sqlite://db/database.db')

DB.create_table :images do
  primary_key :id
  String :file
  String :title
end