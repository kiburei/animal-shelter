class Animal
  attr_accessor(:name, :gender, :doa)
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @gender = attributes.fetch(:gender)
    @doa = attributes.fetch(:doa)
  end
end
