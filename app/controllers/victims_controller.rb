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
  end

end
