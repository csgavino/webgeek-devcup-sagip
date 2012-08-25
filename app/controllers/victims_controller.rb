class VictimsController < ApplicationController

  def index
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
      redirect_to @victim,
        :notice => "#{@victim.name} was successfully created."
    else
      render action: "new"
    end
  end

end
