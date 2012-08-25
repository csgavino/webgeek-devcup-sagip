class SheltersController < ApplicationController
  def index
  end

  def show
    @shelter = Shelter.find_by_id(params['id'])
  end

  def new
    @shelter = Shelter.new
  end

  def edit
  end
  
  def create
    @shelter = Shelter.new(params[:shelter])
    if @shelter.save
      redirect_to @shelter,
        :notice => "Shelter was successfully created"
    else
      render action: "new"
    end
  end
end
