class OuresController < ApplicationController

  def index
    @randomA = Card.where( 'id >= ?', rand(Card.first.id..Card.last.id) ).limit(1)
    @randomB = Card.where( 'id >= ?', rand(Card.first.id..Card.last.id) ).limit(1)
    @randomC = Card.where( 'id >= ?', rand(Card.first.id..Card.last.id) ).limit(1)
    @randomD = Card.where( 'id >= ?', rand(Card.first.id..Card.last.id) ).limit(1)
    @randomE = Card.where( 'id >= ?', rand(Card.first.id..Card.last.id) ).limit(1)
  end
end
