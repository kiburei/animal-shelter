require "rspec"
require "animal"

DB = PG.connect({:dbname => 'animal_shelter'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM animals *;')
  end
end
