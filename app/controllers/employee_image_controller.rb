class EmployeeImageController < ApplicationController

  def update
    @employee = Employee.find(params[:id])
    if @employee.update!( employee_params )
        redirect_to "/employees/current_employee.id"
    else
        redirect_to "/employees/current_employee.id"
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:image)
  end

end
