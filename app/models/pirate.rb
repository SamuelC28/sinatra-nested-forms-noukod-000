class Pirate
  attr_accessor :name, :weigh, :height

  @@pirates = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weights]
    @height = params[:height]
    @@pirate << self
  end

  def self.all
    @@pirates
  end

end
