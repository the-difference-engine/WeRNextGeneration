class GuardiansController < ApplicationController

  def index
    @guardians = Guardians.all
  end

  def new
    @guardian = Guardian.new
  end

  def create
    guardian = Guardian.new(
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

  def show
    guardian_id = params[:id]
    @guardian = Guardian.find_by(id: guardian_id)
  end

  def edit
    @guardian = Guardian.find(params[:id])
  end

  def update
    guardian = Guardian.find(params[:id])
    guardian.assign_attributes(
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
    guardian = Guardian.find(params[:id])
    guardian.destroy
  end

end
