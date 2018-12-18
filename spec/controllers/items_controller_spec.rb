require 'rails_helper'

describe ItemsController, type: :controller do


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

  describe 'GET #edit' do
    let(:item) { create(:item) }
    before { get :edit, params: { id: item.id }, session: {} }

    it 'has a 200 status code' do
      expect(response).to have_http_status(:ok)
    end

    it 'assigns @item' do
      expect(assigns(:item)).to eq item
    end

    it 'renders the :edit template' do
      expect(response).to render_template :edit
    end
  end

  describe 'PATCH #update' do
    let!(:item) { create(:item) }
    let(:update_attributes) do
      {
        name: 'update name',
        price: 'update price',
        description: 'update description'
      }
  end

    it 'saves updated item' do
      expect do
        patch :update, params: { id: item.id, item: update_attributes }, session: {}
      end.to change(Item, :count).by(0)
    end

    it 'updates updated item' do
      patch :update, params: { id: item.id, item: update_attributes }, session: {}
      item.reload
      expect(item.name).to eq update_attributes[:name]
      expect(item.price).to eq update_attributes[:price]
      expect(item.description).to eq update_attributes[:description]
    end

    it 'redirects the :create template' do
      patch :update, params: { id: item.id, item: update_attributes }, session: {}
      item = Item.last
      expect(response).to redirect_to(item_path(item))
    end
  end
  describe 'delete #destroy' do
    let(:user) { create(:user) }
    before do
      @item = create(:item, user_id: user.id)
    end

    context 'log in' do
      before do
        sign_in user
        @item.user_id == user.id
      end
      it 'リクエストは302 リダイレクトとなること' do
        delete :destroy, id: @item.id
        expect(response.status).to eq 302
      end

      it 'データベースから要求されたアイテムが削除されること' do
        expect do
          delete :destroy, params: { id: @item.id }, session: {}
        end.to change(Item,:count).by(-1)
      end

      it '削除後に指定したページにリダイレクトすること' do
        delete :destroy, params: { id: @item.id }, session: {}
        expect(response).to redirect_to("http://test.host/users/user_exhibitation_products/#{user.id}")
      end
    end
  end

  describe 'POST#pay' do
    before do
      allow(Payjp::Charge).to receive(:create).and_return(PayjpMock.prepare_valid_charge)
    end

    it 'stubbing charge creation' do

      payjp_stub(:charges, :create, params: { amount: 3500, customer: 'cus_fe1beb3e434431c4c51c4b8137a4', currency: 'jpy' })

      Payjp::Charge.create(amount: 3500, customer: 'cus_fe1beb3e434431c4c51c4b8137a4', currency: 'jpy')
    end

  end
end

