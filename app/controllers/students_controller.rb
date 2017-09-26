class StudentsController < ApplicationController
before_action :authenticate_guardian! 
  def index
    @students = Student.all 
  end

  def new
    @student = Student.new 

  end

  def create
    @student = Student.new(
                          user_name: params[:user_name],
                          first_name: params[:first_name],
                          last_name: params[:last_name],
                          medications: params[:medications],
                          medical_condition: params[:medical_condition],
                          img: params[:img],
                          img_release: params[:img_release],
                          birth_date: params[:birth_date],
                          gender: params[:gender],
                          race: params[:race],
                          emergency_contact: params[:emergency_contact],
                          emergency_contact_phone: params[:emergency_contact_phone],
                          guardian_id: current_guardian.id,
                          address: params[:address],
                          city: params[:city],
                          state: params[:state],
                          zip: params[:zip]
                          )
    if @student.save
       flash[:success] = "Student Created"
       redirect_to "/guardians/#{current_guardian.id}"
    else 
      flash[:warning] = "Unsucessful, please try again"
      redirect_to "/students/new"
    end 


  end

  def show
    @student = Student.find(params[:id])
    
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    
    @student.assign_attributes(
                          user_name: params[:user_name],
                          first_name: params[:first_name],
                          last_name: params[:last_name],
                          medications: params[:medications],
                          medical_condition: params[:medical_condition],
                          img: params[:img],
                          img_release: params[:img_release],
                          birth_date: params[:birth_date],
                          gender: params[:gender],
                          race: params[:race],
                          emergency_contact: params[:emergency_contact],
                          emergency_contact: params[:emergency_contact],
                          emergency_contact_phone: params[:emergency_contact_phone],
                          guardian_id: current_guardian.id,
                          address: params[:address],
                          city: params[:city],
                          state: params[:state],
                          zip: params[:zip],
                          country: params[:country]
                          )
    if @student.save!
       flash[:success] = "Student Updated"
       redirect_to "/students/#{@student.id}"
    else 
      flash[:warning] = "Error, please try again"
      redirect_to "students/#{@student.id}"
    end 
  end

  def destroy 
    @student = Student.find(params[:id])
    if @student.destroy
       flash[:success] = "Student Removed"
       redirect_to "/guardians/#{current_guardian.id}"
    else
      flash[:warning] = "Unsucessful, try again"
      redirect_to "/students/#{@student.id}"
    end 
  end 

end
