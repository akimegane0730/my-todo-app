class OuresController < ApplicationController

  def index
    @randomA = Card.order("RAND()").limit(1)
    @randomB = Card.order("RAND()").limit(1)
    @randomC = Card.order("RAND()").limit(1)
    @randomD = Card.order("RAND()").limit(1)
    @randomE = Card.order("RAND()").limit(1)
  end
end
