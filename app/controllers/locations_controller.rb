class LocationsController < ApplicationController
    def index
        @locations = Location.all
        # adding the code below to showcase only active locations
        # @locations = Location.where(status: true)
    end

    def new
    end

    def create
        @location = Location.new(
                                 location_type: params[:location_type].
                                 address: params[:address],
                                 city: params[:city],
                                 state: params[:state],
                                 zip: params[:zip],
                                 status: true
                                 )
        if @location.save
            flash[:success] = "Location Successfully Created"
            redirect_to "/locations"
        else
            flash[:warning] = "Error: Please Try Again"
            render "/locations/#{@location.id}/new"
        end
    end

    def show
        @location = Location.find(params[:id])
    end

    def edit
        @location = Location.find(params[:id])

    end

    def update
        @location = Location.find(params[:id])
        @location = assign_attributes(
                                    location_type: params[:location_type],
                                    address: params[:address],
                                    city: params[:city],
                                    state: params[:state],
                                    zip: params[:zip]
                                    status: true
                                    )
        if @location.save
            flash[:success] = "Location Successfully Updated"
            redirect_to "/locations"
        else
            flash[:warning] = "Error: Please Try Again"
            render "/locations/#{@location.id}/edit"
        end
    end

    def destroy
        @location = Location.find(params[:id]
        @location.update(status: false)
        if @location.save
            flash[:success] = "Location Successfully Deleted"
            redirect_to "/locations"
        else
            flash[:warning] = "Error: Please Try Again"
            render "/locations/#{@location.id}"
    end
    
end
