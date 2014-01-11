class WorkController < ApplicationController

	def index

		@works = Work.all
	
	end

	def show
			
		@work = Work.find_by_id(params[:id])

	end

	def create
		# render text: params[:work][:description].inspect
		@work = Work.new(title: params[:work][:title], 
			description: params[:work][:description],
			screenshot_url: params[:work][:screenshot_url],
			demo_url: params[:work][:demo_url],
			technology_used: params[:work][:technology_used])
		@work.save
		redirect_to work_index_path

	end	

	def new
		@work = Work.new
	end

	def edit

		@work = Work.find_by_id(params[:id])

	end

	def update

		@work = Work.find_by_id(params[:work_id])

		@work.update_attributes(title: params[:work][:title], 
			description: params[:work][:description],
			screenshot_url: params[:work][:screenshot_url],
			demo_url: params[:work][:demo_url],
			technology_used: params[:work][:technology_used])
		redirect_to work_index_path

	end

	def destroy
		@work = Work.find_by_id(params[:id])
		@work.destroy
		redirect_to work_index_path
	end

	private
		def work_params
			params.require(:work).permit(:title, :description, :screenshot_url, :demo_url, :technology_used)		
		end

end
