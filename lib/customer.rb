class Customer
  attr_accessor(:name, :phone, :type_preference, :breed_preference)
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @phone = attributes.fetch(:phone)
    @type_preference = attributes.fetch(:type_preference)
    @breed_preference = attributes.fetch(:breed_preference)
  end
end
