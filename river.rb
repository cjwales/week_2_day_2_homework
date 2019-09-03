class River

  attr_accessor :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = [@tuna, @salmon, @pike]
  end

  def count_fish()
    @fish.length()
  end

  def remove_fish(fish_name)
    @fish.delete(fish_name)
  end

end
