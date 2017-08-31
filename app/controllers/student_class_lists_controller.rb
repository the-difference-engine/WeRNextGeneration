class StudentClassListsController < ApplicationController

  def index
    @student_class_list = StudentClassList.all
  end

  def new
    @student_class_list = StudentClassList.new
  end

  def create
    @student_class_list = StudentClassList.new(
                                              student_id: params[:student_id],
                                              code_classes_id: params[:code_classes_id],
                                              employee_id: params[:employee_id],
                                              created_at: params[:created_at],
                                              updated_at: params[:updated_at]
                                              )
    if @student_class_list.save
      flash[:success] = "Class list successfully saved."
      redirect_to "/student_class_lists/#{student_class_list.id}"
    else
      render 'new.html.erb'
    end
  end

  def show
    @student_class_list = StudentClassList.find(params[:id])
  end

  def edit
    @student_class_list = StudentClassList.find(params[:id])
  end

  def update
    @student_class_list = StudentClassList.new(
                                              student_id: params[:student_id],
                                              code_classes_id: params[:code_classes_id],
                                              employee_id: params[:employee_id],
                                              created_at: params[:created_at],
                                              updated_at: params[:updated_at]
                                              )
    if @student_class_list.save
      flash[:success] = "Class list successfully updated."
      redirect_to "/student_class_lists/#{student_class_list.id}"
    end
  end

  def destroy
    @student_class_list = StudentClassList.find(params[:id])
    @student_class_list.destroy
      if @student_class_list.destroy
        flash[:warning] = "Class list deleted."
        redirect_to "/"
      end
  end 
end
