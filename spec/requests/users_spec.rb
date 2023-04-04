require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { FactoryBot.create(:user) }
  
  describe 'Users index' do
    before(:example) { get users_path } # get(:index)
    it 'is a success' do
      expect(response).to have_http_status(:success)
    end

    it "renders 'index' template" do
      expect(response).to render_template('index')
      expect(response.body).to include('List of users')
    end
  end

  describe 'Users show' do     
    it 'is a success' do
      get user_path(user)
      expect(response).to have_http_status(:success)
    end

    it "renders 'show' template" do
      get user_path(user)
      expect(response).to render_template('show')
      expect(response.body).to include('A user')
    end
  end
end
