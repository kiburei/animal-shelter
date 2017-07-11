require "rspec"
require "breed"

DB = PG.connect({:dbname => 'animal_shelter_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM breeds *;')
  end
end

describe('Breed') do

end
