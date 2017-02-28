class DecksController < ApplicationController

	def enter
	end

	def show
	end

	def index
		@decks = Deck.all
	end

	def new
		@deck = Deck.new
	end

private
	
	def deck_params
		params.require(:deck).permit(:name)
	end
	
end
	
