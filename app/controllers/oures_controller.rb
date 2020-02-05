class OuresController < ApplicationController

  def index
    @cards = Card.where()
  end
end
