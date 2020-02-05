class OuresController < ApplicationController

  def index
    @random = Card.order("RAND()").limit(5)
  end
end
