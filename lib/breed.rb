class Breed
  attr_accessor(:name, :type, :description)
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @type = attributes.fetch(:type)
    @description = attributes.fetch(:description)
  end

  def save
    DB.exec("INSERT INTO breeds (name, type, description) VALUES ('#{@name}','#{@type}','#{@description}');")
  end

  def self.all
    breeds = DB.exec('SELECT * FROM breeds;')
    breed_array = []
    breeds.each do |breed|
      breed_array.push(Breed.new(:name => breed.fetch('name'), :type => breed.fetch('type'), :description => breed.fetch('description')))
    end
    breed_array
  end

  def ==(breed)
    (self.class == breed.class).&(self.name == breed.name)
  end

end
