require 'rails_helper'

describe CategorysController, type: :controller do

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

    it "array of item_images" do
      item_images = []
      items = create_list(:item, 3)
      items.each do |item|
        item_images.push(item.item_images)
        item_images.flatten!
      end
      get :index
      expect(assigns(:item_images)).to match(item_images)
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end

  end
end
