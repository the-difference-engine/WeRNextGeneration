class EmployeesController < ApplicationController
    def index
        @employees = Employee.all

        def employee_data_list  
            respond_to do |format|
                format.html
                format.csv do
                    headers['Content-Disposition'] = "attachment; filename=\"employee-list\""
                          headers['Content-Type'] ||= 'text/csv'
                end
            end
        end
    end

    def new    
    end

    def create
        @employee = Employee.new(
                                company_logo: params[:company_logo],
                                user_type: params[:user_type],
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                phone: params[:phone],
                                address_1: params[:address_1],
                                address_2: params[:address_2],
                                city: params[:city],
                                state: params[:state],
                                zip: params[:zip],
                                image: params[:image],
                                bio: params[:bio]
                                 )
        if @employee.save
            flash[:success] = "Employee Successfully Created"
            redirect_to "/employees/#{@employee.id}"
        else
            flash[:warning] = "Error: Please Try Again"
            render "/employees/new"
        end

    end

    def show
        @employee = Employee.find(params[:id])
        # @guardian_pending = employees.camps.students.guardian(where :status == "pending")
        # @volunteer_pending = employees.camps.volunteer(where :status == "pending")
        # @partner_pending = Partner.where(:status == "pending")
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.assign_attributes(
                                        
                                        user_type: params[:user_type],
                                        first_name: params[:first_name],
                                        last_name: params[:last_name],
                                      
                                        phone: params[:phone],
                                        address_1: params[:address_1],
                                        address_2: params[:address_2],
                                        city: params[:city],
                                        state: params[:state],
                                        zip: params[:zip],
                                        image: params[:image],
                                        bio: params[:bio]
                                    )
        if @employee.save
            flash[:success] = "Employee Successfully Updated"
            redirect_to "/employees/#{@employee.id}"
        else
            flash[:warning] = "Error: Please Try Again"
            render "/employee/#{@employee.id}/edit"
        end
    end

    def destroy

        @employee = Employee.find(params[:id])
        @employee.update(status: "inactive")

        if @employee.save
            flash[:success] = "Employee Deleted"
            redirect_to "/employees"
        else
            flash[:warning] = "Error: Please try again"
            render "/employees/#{@employee.id}"
        end

    end
    
end
