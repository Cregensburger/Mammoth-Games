class GamesController < ApplicationController
	def new
	  @game = Game.new
	end

	def hangman
	end

	def tictactoe
	end
end
