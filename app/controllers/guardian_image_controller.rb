class GuardianImageController < ApplicationController

  def update
    @guardian = Guardian.find(params[:id])
    if @guardian.update!( guardian_params)
      redirect_to "/guardians/#{@guardian.id}"
    else
      redirect_to "/guardians/#{@guardian.id}"
    end
  end

  private

  def guardian_params
    params.require(:guardian).permit(:image)
  end

end
