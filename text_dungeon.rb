# Creating a text adventure - follow along in Cooper's Beginning Ruby

class Dungeon
  attr_accessor :player

  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []
  end

  Player = Struct.new(:name, :location)
  Room = Struct.new(:reference, :name, :description, :connections)

  def add_room(reference, name, description, connections)
    @rooms << Room.new(reference, name, description, connections)
  end

end