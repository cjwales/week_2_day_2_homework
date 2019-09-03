require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @amazon = River.new("Amazon")
    @george = Bear.new("George", "Black Bear")
    @tuna = Fish.new("Tuna")
    @salmon = Fish.new("Salmon")
    @pike = Fish.new("Pike")

    @fish = [@tuna, @salmon, @pike]
  end


  def test_bear_eat_fish()
    @george.eat_fish(@salmon)
    assert_equal(1, @george.stomach.length())
    assert_equal(0, @fish.length())
  end

  def test_roar
    @george.roar()
    assert_equal("ROAR!", @george.roar())
  end

  def test_food_count()
    @george.food_count()
    assert_equal(1, @george.food_count())
  end
end
