require "rspec"
require "customer"

DB = PG.connect({:dbname => 'animal_shelter'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM customers *;')
  end
end
