class HomeController < ApplicationController
	 before_action :set_curriculum, only: [:show, :edit, :update, :destroy]
	def index
	end
	def curriculum
		@curriculum = Curriculum.new
	end
end