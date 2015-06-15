class HomeController < ApplicationController
	 before_action :set_curriculum, only: [:show, :edit, :update, :destroy]
	def index
	end
	def trabalhe
		@curriculum = Curriculum.new
	end
end
