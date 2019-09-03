require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup()
    @amazon = River.new("Amazon", @fish)
    @george = Bear.new("George", "Black Bear")
    @tuna = Fish.new("Tuna")
    @salmon = Fish.new("Salmon")
    @pike = Fish.new("Pike")

    @fish = [@tuna, @salmon, @pike]
  end

  def test_count_fish()
    assert_equal(3, @amazon.count_fish())
  end

  def test_remove_fish()
    remove_fish(@salmon)
    assert_equal(2, @amazon.fish.length())
  end

end
