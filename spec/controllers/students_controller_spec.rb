require 'rails_helper'

RSpec.describe StudentsController, type: :controller do 
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
    hash = { students: {
                        user_name: "AwesomeUser",
                        first_name: "Judy",
                        last_name: "Wright",
                        medications: "Epi Pen",
                        medical_condition: "Shellfish allergy",
                        img: "Test",
                        img_release: "Yes",
                        birth_date: "7-13-12",
                        gender: "female",
                        race: "Hispanic",
                        emergency_contact: "John Wright",
                        emergency_contact_phone: "773-000-1234",
                        guardian_id: "1",
                        address_1: "300 N. Clark Street",
                        address_2: "Apartment 2",
                        city: "Washington",
                        state: "D.C.",
                        zip: "20004",
                      }
            }
  end

  before(:example) {
    user = FactoryGirl.create(:user)
    sign_in user
  }
  before(:example) { post(:create, params: hash, students: { :student => "Student 1"}) }

  it 'redirects to profile page' do
    expect(response).to redirect_to("/profile/#{assigns(:students).id}")
  end
end