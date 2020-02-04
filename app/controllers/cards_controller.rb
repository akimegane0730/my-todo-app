class CardsController < ApplicationController

  # before_action set_card:, only: [:show, :edit, :update, :destroy]
  def new
    @card = Card.new
    # idの値が不明だからfind_byにしている
    @list = List.find_by(id: params[:list_id])
    # @list = List.find(params[:id])
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render action :new
    end
  end

  def show
    @card = Card.find(params[:id])
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    if @card.update_attributes(card_params)
      redirect_to :root
    else
      render action :edit
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to :root
  end

  private
    def card_params
      params.require(:card).permit(:title, :memo, :list_id)
    end 
end
