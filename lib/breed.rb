class Breed
  attr_accessor(:name, :type, :description)
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @type = attributes.fetch(:type)
    @description = attributes.fetch(:description)
  end
end
