class CampsController < ApplicationController
  
  def index
    @camp = Camp.all


  end

  def new
    @camp = Camp.new
  end

  def create
    @camp = Camp.new(
                                title: params[:title],
                                description: params[:description],
                                max_students: params[:max_students],
                                min_students: params[:min_students],
                                address: params[:address],
                                city: params[:city],
                                state: params[:state],
                                zip: params[:zip],
                                phone: params[:phone],
                                instructor_id: params[:instructor_id],
                                start_time: params[:start_time],
                                end_time: params[:end_time],
                                start_date: params[:start_date],
                                end_date: params[:end_date],
                                price: params[:price]
                                )
    
  end

  def show
    camp = params[:id]
    @camp = Camp.find_by(id: camp)
  end

  def edit
    @camp = Camp.find(params[:id])
  end

  def update
    camp = Camp.find(params[:id])
    camp.assign_attributes(
                                  title: params[:title],
                                  description: params[:description],
                                  max_students: params[:max_students],
                                  min_students: params[:min_students],
                                  address: params[:address],
                                  city: params[:city],
                                  state: params[:state],
                                  zip: params[:zip],
                                  phone: params[:phone],
                                  instructor_id: params[:instructor_id],
                                  start_time: params[:start_time],
                                  end_time: params[:end_time],
                                  start_date: params[:start_date],
                                  end_date: params[:end_date],
                                  price: params[:price]
                                  )
    camp.save
  end

  def destroy
    camp = Camp.find(params[:id])
    camp.destroy
  end

end

end
