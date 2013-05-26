class PetitionsController < ApplicationController
  # check that user is signed in before a new petition can be created
  before_filter :authorize, only: [:new, :create]

  def new
  	@school = School.find(params[:school_id])
  	@petition = Petition.new
  end

  def show
  	@petition = Petition.find(params[:id])
  end

  def update
    @petition = Petition.find(params[:id])
    if @petition.update_attributes(params[:petition])
      redirect_to school_petition_url(@petition.school, @petition)
    else
      render :show
    end
  end

  def create
    @school = School.find(params[:school_id])
    @petition = @school.petitions.create(params[:petition])
    @petition.user = current_user
  	if @petition.save
  		redirect_to school_petition_url(@petition.school, @petition)
  	else
  		render :new
  	end
  end
end
