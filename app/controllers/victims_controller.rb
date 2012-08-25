class VictimsController < ApplicationController
  def search
    @victims = Victim.name_like(params[:name])
  end
end
