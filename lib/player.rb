class Player
  DEFAULT_HP = 60
  
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def name
    @name
  end

  def under_attack
    @hp -= 10
  end

end
