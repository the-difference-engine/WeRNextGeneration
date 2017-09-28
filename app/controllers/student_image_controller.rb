class StudentImageController < ApplicationController

  def update
    @student = Student.find(params[:id])
    if @student.update!( student_params)
      redirect_to "/students/#{@student.id}"
    else
      redirect_to "/students/#{@student.id}"
    end
  end

  private

  def student_params
    params.require(:student).permit(:image)
  end

end
