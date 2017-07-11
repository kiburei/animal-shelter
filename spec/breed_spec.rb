require "rspec"
require "breed"
require "pg"

DB = PG.connect({:dbname => 'animal_shelter_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM breeds *;')
  end
end

describe('Breed') do
  it "adds a new breed to db" do
    breed = Breed.new({:name => 'German Shephard', :type => 'Dog', :description => 'Umbwa Kali!!!'})
    breed.save
    expect(Breed.all[-1].==(breed)).to(eq(true))
  end
  it "Finds one breed" do
    breed = Breed.new({:name => 'German Shephard', :type => 'Dog', :description => 'Umbwa Kali!!!'})
    breed.save
    breed_array = Breed.all
    expect(Breed.find(breed_array[-1].id)).to(eq([breed]))
  end
end
