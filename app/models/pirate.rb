class Pirate
  attr_accessor :name, :weigh, :height

  @@pirates = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weights]
    @height = params[:height]
    @@ll << self
  end

  def self.all
    @@pirates
  end

end
