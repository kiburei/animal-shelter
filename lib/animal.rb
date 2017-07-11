class Animal
  attr_accessor(:type, :breed, :name, :gender, :doa)
  def initialize(attributes)
    @type = attributes.fetch(:type)
    @breed = attributes.fetch(:breed)
    @name = attributes.fetch(:name)
    @gender = attributes.fetch(:gender)
    @doa = attributes.fetch(:doa)
  end
end
