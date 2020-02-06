class LikesController < ApplicationController

  def create
    @like = current_user.likes.build(like_params)
    @card = @like.card
  end


  def destroy
    
  end

  private
    def like_params
      params.permit(:card_id)
end
