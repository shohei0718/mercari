require 'rails_helper'

describe ItemsController, type: :controller do

  before(:each) do
    @request.env ||= {}
    user = "mercari"
    pass = "2018"
    @request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pass)
  end

  describe 'GET #index' do

    it "array of items ordered by created_at DESC" do
      items = create_list(:item, 3)
      get :index
      expect(assigns(:items)).to match(items.sort{|a, b| b.created_at <=> a.created_at })
    end

    it "array of items ordered limit under 4" do
      items = create_list(:item, 10)
      get :index
      expect(assigns(:items).count <= 4).to eq true
    end

    it "array pf item_images" do
      item_images = create_list(:item_image, 5)
      get :index
      expect(assigns(:item_images)).to match(item_images)
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end

  end
end
