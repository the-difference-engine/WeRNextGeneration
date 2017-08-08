class StudentsController < ApplicationController

  def index
    @student = Student.all 
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
                          medical_conditions: params[:medical_conditions],
                          img: params[:img],
                          img_release: params[:img_release],
                          birth_date: params[:birth_date],
                          gender: params[:gender],
                          race: params[:race],
                          emergency_contact: params[:emergency_contact],
                          emergency_contact_name: params[:emergency_contact_name],
                          emergency_contact_phone: params[:emergency_contact_phone],
                          #guardian_id: current_guardian.id
                          address: params[:address],
                          city: params[:city],
                          state: params[:state],
                          zip_code: params[:zip_code],
                          phone_number: params[:phone_number]
                          )
    @student.save!
    flash[:success] = "Student Created"

    # potential sessions controller

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
                          medical_conditions: params[:medical_conditions],
                          img: params[:img],
                          img_release: params[:img_release],
                          birth_date: params[:birth_date],
                          gender: params[:gender],
                          race: params[:race],
                          emergency_contact: params[:emergency_contact],
                          emergency_contact_name: params[:emergency_contact_name],
                          emergency_contact_phone: params[:emergency_contact_phone],
                          #guardian_id: current_guardian.id
                          address: params[:address],
                          city: params[:city],
                          state: params[:state],
                          zip_code: params[:zip_code],
                          phone_number: params[:phone_number]
                          )
    @student.save!
    flash[:success] = "Student Updated"
  end

  def destroy 
    @student = Student.find(params[:id])
    @student.destroy

    flash[:success] = "Student Removed"
  end 

end
