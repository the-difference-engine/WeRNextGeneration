class VolunteerImageController < ApplicationController

  def update
    @volunteer = Volunteer.find(params[:id])
    if @volunteer.update!( volunteer_params)
      redirect_to "/volunteers/#{@volunteer.id}"
    else
      redirect_to "/volunteers/#{@volunteer.id}"
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:image)
  end


end
