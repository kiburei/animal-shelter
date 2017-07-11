require "rspec"
require "animal"
require "pg"

DB = PG.connect({:dbname => 'animal_shelter_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM animals *;')
  end
end
