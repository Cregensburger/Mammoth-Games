class CommentsController < ApplicationController
	
	def create
		@game = Game.find(params[:game_id])
		@game.comments.create(comment_params)
		redirect_to game_path(@game)
	end

	private
	
	def comment_params
		params.require(:comment).permit(:text).merge(:user_id => current_user.id)
	end
end