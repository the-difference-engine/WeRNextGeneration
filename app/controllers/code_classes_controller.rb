class CodeClassesController < ApplicationController
  
  def index
    @code_class = CodeClass.all


  end

  def new
    @code_class = CodeClass.new
  end

  def create
    @code_class = CodeClass.new(
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
    code_class = params[:id]
    @code_class = CodeClass.find_by(id: code_class)
  end

  def edit
    @code_class = CodeClass.find(params[:id])
  end

  def update
    code_class = CodeClass.find(params[:id])
    code_class.assign_attributes(
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
    code_class.save
  end

  def destroy
    code_class = CodeClass.find(params[:id])
    code_class.destroy
  end

end
