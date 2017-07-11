class Breed
  attr_accessor(:id, :name, :type, :description)
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @type = attributes.fetch(:type)
    @description = attributes.fetch(:description)
    @id = 0
  end

  def save
    DB.exec("INSERT INTO breeds (name, type, description) VALUES ('#{@name}','#{@type}','#{@description}');")
  end

  def self.all
    breeds = DB.exec('SELECT * FROM breeds;')
    breed_array = []
    breeds.each do |breed|
      breed_array.push(Breed.new(:id => breed.fetch('id'),:name => breed.fetch('name'), :type => breed.fetch('type'), :description => breed.fetch('description')))
    end
    breed_array
  end

  def ==(breed)
    (self.class == breed.class).&(self.name == breed.name)
  end

  def self.find(id)
    my_breed = nil
    Breed.all.each do |breed|
      if breed.id == id
        my_breed = breed
      end
      my_breed
    end
  end

end
