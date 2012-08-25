class VictimsController < ApplicationController
  def index
    @victims = Victim.all
    @victim = Victim.new
    @shelters = Shelter.all
  end

  def show
    @victim = Victim.find_by_id(params[:id])
  end

  def new
    @victim = Victim.new
    @shelters = Shelter.all
  end

  def edit
  end

  def create
    @victim = Victim.new(params[:victim])
    @victim.user_id = current_user.id
    if @victim.save
      redirect_to victims_path,
        :notice => "#{@victim.name} was successfully created."
    else
      render action: "new"
    end
  end

  def search
    @victims = Victim.name_like(params[:name])
  end

end
