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
    if @camp.save
      flash[:success] = "Camp successfully saved."
      redirect_to "/camps/#{camp.id}"
    else
      render 'new.html.erb'
    end    
  end

  def show
    @camp = Camp.find(params[:id])
  end

  def edit
    @camp = Camp.find(params[:id])
  end

  def update
    @camp = Camp.find(params[:id])
    @camp.assign_attributes(
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
    if @camp.save
      flash[:success] = "Camp successfully updated."
      redirect_to "/camps/#{camp.id}"
    end
  end

  def destroy
    @camp = Camp.find(params[:id])
    @camp.destroy
      if @camp.destroy
        flash[:warning] = "Camp deleted."
        redirect_to "/"
      end
  end
end

