class SchoolsController < ApplicationController
	before_filter :authorize, only: [:new, :create]

	def index
		@schools = School.all
	end

	def show
		@school = School.find(params[:id])
	end

	def new
		@school = School.new
	end

	def create
		@user = current_user
		@school = School.new(params[:school])
		if @school.save
			redirect_to @school
		else
			render :new
		end
	end

	def search
		@results = School.search(params[:query])
	end
end
