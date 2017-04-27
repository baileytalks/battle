class Player
  attr_accessor :name, :hp
  def initialize(name)
    @name = name
    @hp   = rand(6)+15
  end
end
