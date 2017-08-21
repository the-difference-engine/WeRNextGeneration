class VolunteersController < ApplicationController
    def index
        @volunteers = Volunteer.all
    end

    def new       
    end

    def create
        volunteer = Volunteer.new(
                                user_type: params[:user_type],
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                phone: params[:phone],
                                address: params[:address],
                                city: params[:city],
                                state: params[:state],
                                zip: params[:zip],
                                image: params[:image],
                                bio: params[:bio]
                                 )
        volunteer.save
    end

    def show
        @volunteer = Volunteer.find_by(params[:id])
    end

    def edit
        @volunteer = Volunteer.find_by(params[:id])
    end

    def update
        @volunteer = Volunteer.find_by(params[:id])
        @volunteer.assign_attributes(
                                        user_type: params[:user_type],
                                        first_name: params[:first_name],
                                        last_name: params[:last_name],
                                        email: params[:email],
                                        phone: params[:phone],
                                        address: params[:address],
                                        city: params[:city],
                                        state: params[:state],
                                        zip: params[:zip],
                                        image: params[:image],
                                        bio: params[:bio]
                                    )
        @volunteer.save
    end

    def destroy
        @volunteer = Volunteer.find_by(params[:id])
        volunteer.destroy
    end

end
