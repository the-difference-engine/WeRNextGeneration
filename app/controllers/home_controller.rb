class HomeController < ApplicationController

  def index

    redirect_to '/guardians/:id'

  end

end
