class GuardiansController < ApplicationController
before_action :authenticate_guardian!
before_action :authenticate_employee! 

  def index
    @guardians = Guardian.all
  end

  def new
    @guardian = Guardian.new
  end

  def create
    @guardian = Guardian.new(
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              home_phone: params[:home_phone],
                              cell_phone: params[:cell_phone],
                              address_1: params[:address_1],
                              address_2: params[:address_2],
                              city: params[:city],
                              state: params[:state],
                              zip: params[:zip],
                              country: params[:country]
                              )
      if @guardian.save 
      flash[:success] = "Account Created"
      redirect_to "/guardians#{current_guardian.id}"
    else
      flash[:warning] = "Account information incorrect, try again"
      redirect_to "/guardians/new"
    end 


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
                              home_phone: params[:home_phone],
                              cell_phone: params[:cell_phone],
                              address_1: params[:address_1],
                              address_2: params[:address_2],
                              city: params[:city],
                              state: params[:state],
                              zip: params[:zip],
                              country: params[:country]
                              )
    if @guardian.save
      flash[:success] = "Account Updated"
      redirect_to "/guardians/#{current_guardian.id}"
    else 
      flash[:warning] = "Error with Information, try again"
      redirect_to "/guardians/#{current_guardian.id}/edit"
    end
  end

  def destroy
    if @guardian = Guardian.find(params[:id])
       guardian.destroy
       flash[:sucess] = "Account Deleted"
    else
      flash[:warning] = "Error - try again"
      redirect_to "/guardians/#{current_guardian.id}"
    end 
  end

end
