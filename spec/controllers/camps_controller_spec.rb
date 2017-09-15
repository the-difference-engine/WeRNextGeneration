require 'rails_helper'

RSpec.describe CampsController, type: :controller do
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
      expect(response).to render_template('camps/new.html.erb')
    end
  end

  describe "#create" do
    hash = { camps: {
            title: "Code Camp",
            description: "HTML and CSS",
            max_students: "15",
            min_students: "5",
            address: "400 Main Street",
            city: "Washington",
            state: "D.C.",
            zip: "20008",
            phone: "123-456-7980",
            employee_id: "8",
            start_time: "5:00",
            end_time: "7:00",
            start_date: "December 1",
            end_date: "December 1",
            price: "0.00"
          }
        }
    end


      before(:example) {
        user = FactoryGirl.create(:user)
        sign_in user
      }
      before(:example) { post(:create, params: hash, camps: { :title => "Camp 1"}) }

      it 'redirects to profile page' do
        expect(response).to redirect_to("/profile/#{assigns(:camps).id}")
      end
    end
