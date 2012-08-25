class SuppliesController < ApplicationController
  def index
  end

  def new
    @supply = Supply.new
    @shelters = Shelter.all
  end

  def create
    @supply = Supply.new(params[:supply])
    if @supply.save
      redirect_to @supply,
        :notice => "#{@supplyname} was successfully created."
    else
      render aciton: "new"
    end

  end


end
