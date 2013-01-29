class PokerController < ApplicationController
	def index
		@cards = [*1..52].sample(5)
	end
end
