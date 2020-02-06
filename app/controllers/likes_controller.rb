class LikesController < ApplicationController

  before_action :authenticate_user!
  
  def create
    @like = current_user.likes.build(like_params)
    @card = @like.card
  end


  def destroy
    @like = Like.find(params[:id])
    @card = @like.card
  end

  private
    def like_params
      params.permit(:card_id)
end
