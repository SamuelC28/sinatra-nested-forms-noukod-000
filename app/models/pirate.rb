class Pirate
  attr_accessor :name, :weigh, :height

  @@all = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weights]
    @height = params[:height]
    @@ll << self
    end
end
