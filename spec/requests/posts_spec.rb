require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  user = FactoryBot.create(:user) 
  
  describe 'Posts index' do    
    it 'is a success' do
      get user_posts_path(user)
      expect(response).to have_http_status(:success)
    end

    it "renders 'index' template" do
      get user_posts_path(user)
      expect(response).to render_template('index')
      expect(response.body).to include('List of posts of a user')
    end
  end 
end
