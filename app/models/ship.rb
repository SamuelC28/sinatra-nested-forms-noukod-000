class Ship
  attr_accessor :name, :type, :booty

  @@ship = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @@ship << self
  end

  def self.all
    @@ship
  end

  def self.clear
    @@ship.clear
  end
end

