require 'rails_helper'

RSpec.describe LocationsController, type: :controller do
  describe "#index" do
    it "responds successfully" do
      get :index
      expect(response).to be_success
    end
  end

  describe "#show" do
    it "responds successfully" do
      get :show
      expect(response).to be_success
    end
  end

  describe "#new" do
    before(:example) {
      user = FactoryGirl.create(:user)
      sign_in user
    }
    before(:example) { get(:new) }

    it 'renders the template, if logged in' do
      expect(response).to render_template('locations/new.html.erb')
    end
  end

  describe "#create" do
    hash = { locations: {
                          location_type: "school",
                          address_1: "100 N. Main Street",
                          address_2: "Apt. 201",
                          city: "Washington",
                          state: "D.C.",
                          zip: "20008"
                        }
            }
  end

  before(:example) {
    user = FactoryGirl.create(:user)
    sign_in user
  }
  before(:example) { post(:create, params: hash, locations: { :location_type => "Location 1" }) }

  it 'redirects to profile page' do
    expect(response).to redirect_to("/profile/#{assigns(:locations).id}")
  end
end