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
      item_images = create_list(:item_image,4)
      get :index
      expect(assigns(:item_images)).to match(item_images)
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end

  end



  describe '#show' do

    it "responds successfully" do
      item = create(:item)
      get :show, params: {id: item.id}
      expect(response).to be_success
    end

    it "returns a 200 response" do
      item = create(:item)
      get :show, params: {id: item.id}
      expect(response).to have_http_status "200"
    end
  end



  #   it "assigns the requested item to @item" do
  #     item = create(:item)
  #     get :show, id: item
  #     expect(assigns(:item)).to eq item
  #   end

  #   it "renders the :show template" do
  #     item = create(:item)
  #     get :show, id:item
  #     expect(response).to render_template :show
  #   end

  #   it "assigns the requested item_image to @item_image" do
  #     item_image = create(:item_image)
  #     get :show, params: { id:item_image.id }
  #     expect(assigns(:item_image)).to eq item_image
  #   end

  #   it "renders the :show template" do
  #     item_image = create(:item_image)
  #     get :show, params: { id: item_image.id }
  #     expect(response).render_template :show
  #   end

  #   it "assigns the requested item_images to @item_images" do
  #     item_images = create(:item_image.image)
  #     get :show, id: item_image
  #     expect(assigns(:item_image.image)).to eq item_image
  #   end

  #   it "renders the :show template" do
  #     item_image = create(:item_image.image)
  #     get :show, id: item_image
  #     expect(response).render_template :show
  #   end

  # end
end
