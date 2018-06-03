class PicsController < ApplicationController

	def index
	end

	def new
		@pic = Pic.new
	end
	
	#saving in database
	def create
		@pic = Pic.new(pic_params)
	end

	private

	def pic_params
		params.require(:pic).permit(:title, :descrirption)
	end

end
