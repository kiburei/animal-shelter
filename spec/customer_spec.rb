require "rspec"
require "customer"
require "pg"

DB = PG.connect({:dbname => 'animal_shelter_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM customers *;')
  end
end
