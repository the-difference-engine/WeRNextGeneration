class GuardiansController < ApplicationController

  def index
    @guardians = Guardian.all
  end

  def new
    @guardian = Guardian.new
  end

  def create
    p "*******************************"
    @guardian = Guardian.new(
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              # email: params[:email], migrated out of schema due to devise--may be ok written as is
                              home_phone: params[:home_phone],
                              cell_phone: params[:cell_phone],
                              address: params[:address],
                              city: params[:city],
                              state: params[:state],
                              zip: params[:zip]
                              )
    @guardian.save 
    redirect_to "/students/new"

  end

  def show
    @guardian = Guardian.find_by(id: params[:id])

  end

  def edit
    @guardian = Guardian.find(params[:id])
  end

  def update
    @guardian = Guardian.find(params[:id])
    @guardian.assign_attributes(
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              # email: params[:email], migrated out of schema due to devise--may be ok written as is
                              home_phone: params[:home_phone],
                              cell_phone: params[:cell_phone],
                              address: params[:address],
                              city: params[:city],
                              state: params[:state],
                              zip: params[:zip]
                              )
  end

  def destroy
    @guardian = Guardian.find(params[:id])
    guardian.destroy
  end

end
