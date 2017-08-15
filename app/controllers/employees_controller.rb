class EmployeesController < ApplicationController
    before_action :authenticate_employee!
    def index
        @employees = Employee.all
    end

    def new       
    end

    def create
        employee = Employee.new(
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
        employee.save
    end

    def show
        @employee = Employee.find_by(params[:id])
    end

    def edit
        @employee = Employee.find_by(params[:id])
    end

    def update
        @employee = Employee.find_by(params[:id])
        @employee.assign_attributes(
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
        @employee.save
    end

    def destroy
        @employee = Employee.find_by(params[:id])
        employee.destroy
    end
    
end
