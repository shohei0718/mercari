require 'rails_helper'

describe CommunicationsController, type: :controller do
  context "create communication" do
    let(:item)            { create(:item) }
    let(:user)            { create(:user) }
    let(:order_status)    { create(:order_status) }
    let(:communication) { attributes_for(:communication) }
    it "message post" do
      expect do
        post :create, params:{communication: attributes_for(:communication,user_id: user.id,order_status_id: order_status.id),item_id: item.id
      }end.to change(Communication, :count).by(1)
    end
    it "redirect after post" do
      post :create, params:{communication: attributes_for(:communication,user_id: user.id,order_status_id: order_status.id),item_id: item.id}
        expect(response).to redirect_to "/items/#{item.id}"
    end
  end
end
