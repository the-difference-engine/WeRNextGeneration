class LocationsController < ApplicationController
    def index
        @location = Location.all
    end

    def new
    end

    def create
        location = Location.new(
                                 location_type: params[:location_type].
                                 address: params[:address],
                                 city: params[:city],
                                 state: params[:state],
                                 zip: params[:zip]
                                 )
        location.save
    end

    def show
        @location = Location.find_by(params[:id])
    end

    def edit
        @location_id = Location.find_by(params[:id])

    end

    def update
        @location_id = Location.find_by(params[:id])
        @location = assign_attributes(
                                    location_type: params[:location_type],
                                    address: params[:address],
                                    city: params[:city],
                                    state: params[:state],
                                    zip: params[:zip]
                                    )
        @location.save
    end

    def destroy
        @location_id = Location.find_by(params[:id]
        @location_id.destroy
    end
    
end
