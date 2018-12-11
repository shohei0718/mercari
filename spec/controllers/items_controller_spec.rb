require 'rails_helper'

describe ItemsController, type: :controller do

  before(:each) do
    @request.env ||= {}
    user = "mercari"
    pass = "2018"
    @request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pass)
  end

  describe 'GET #index' do
    # 正常なレスポンスか？
    it "responds successfully" do
      get :index
      expect(response).to be_success
    end
    # 200レスポンスが返ってきているか？
    it "returns a 200 response" do
      get :index
      expect(response).to have_http_status "200"
    end

    it "array of items ordered limit under 4" do
      items = create_list(:item, 10)
      get :index
      expect(assigns(:items).count <= 4).to eq true
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


  describe 'GET#show' do
    let(:item) { create(:item)}
    before {get :show, params: {id: item.id}, session: {} }

    it "returns a 200 response" do
      expect(response).to have_http_status "200"
    end

    it "assigns @item" do
      expect(assigns(:item)).to eq item
    end

    it "renders the :show template" do
      expect(response).to render_template :show
    end
  end

end
