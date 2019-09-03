require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')

class FishTest < MiniTest::Test

  def setup()
    @amazon = River.new("Amazon")
    @george = Bear.new("George", "Black Bear")
    @tuna = Fish.new("Tuna")
    @salmon = Fish.new("Salmon")
    @pike = Fish.new("Pike")

    @fish = [@tuna, @salmon, @pike]
  end

end
