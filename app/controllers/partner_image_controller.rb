class PartnerImageController < ApplicationController

  def update
    @partner = Partner.find(params[:id])
    if @partner.update!( partner_params)
      redirect_to "/partners/#{@partner.id}"
    else
      redirect_to "/partners/#{@partner.id}"
    end
  end

  private

  def partner_params
    params.require(:partner).permit(:image)
  end


end
