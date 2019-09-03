class Bear

  attr_accessor :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(fish_name)
    @stomach.push(fish_name)
    @amazon.remove_fish(fish_name)
  end

  def roar()
    return "ROAR!"
  end


  def food_count
    return @stomach.length()
  end

end
