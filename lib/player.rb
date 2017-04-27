class Player
  attr_accessor :name, :hp

  def initialize(name, hp = rand(6)+15)
    @name = name
    @hp   = hp
  end
end
