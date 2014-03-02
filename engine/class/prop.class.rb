#
# The Prop class represents an item in the game.
#

class Prop < GameComponent

  include Has_Events
  include Has_Traits

  attr_accessor :location, :events

  def initialize

    @traits = {}
  end

end
