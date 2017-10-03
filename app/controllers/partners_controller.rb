class PartnersController < ApplicationController

  def index
    @partners = Partner.all
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(
                              company_name: params[:company_name],
                              last_name: params[:last_name],
                              address_1: params[:address_1],
                              address_2: params[:address_2],
                              city: params[:city],
                              state: params[:state],
                              zip: params[:zip],
                              country: params[:country]
                              )
      if @partner.save 
      flash[:success] = "Account Created"
      redirect_to "/partners#{current_partner.id}"
    else
      flash[:warning] = "Account information incorrect, try again"
      redirect_to "/partners/new"
    end 


  end

  def show
    @partner = Partner.find_by(id: params[:id])

  end

  def edit
    @partner = Partner.find(params[:id])
  end

  def update
    @partner = Partner.find(params[:id])
    @partner.assign_attributes(
                              company_name: params[:company_name],
                              address_1: params[:address_1],
                              address_2: params[:address_2],
                              city: params[:city],
                              state: params[:state],
                              zip: params[:zip],
                              country: params[:country]
                              )
    if @partner.save
      flash[:success] = "Account Updated"
      redirect_to "/partners/#{current_partner.id}"
    else 
      flash[:warning] = "Error with Information, try again"
      redirect_to "/partners/#{current_partner.id}/edit"
    end
  end

  def destroy
    if @partner = Partner.find(params[:id])
       partner.destroy
       flash[:sucess] = "Account Deleted"
    else
      flash[:warning] = "Error - try again"
      redirect_to "/partners/#{current_partner.id}"
    end 
  end
end
