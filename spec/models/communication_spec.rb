require 'rails_helper'

describe Communication do
  describe 'message#create' do
    it "is valid with all info" do
      communication = build(:communication)
      expect(communication).to be_valid
    end
  end
    it "is invalid without a item_id" do
      communication = build(:communication, item_id: nil)
      communication.valid?
      expect(communication.errors[:item_id]).to include("を入力してください")
    end

    it "is invalid without a user_id" do
      com = build(:communication, user_id: nil)
      com.valid?
      expect(com.errors[:user_id]).to include("を入力してください")
    end

    it "is invalid without a order_status_id" do
      com = build(:communication, order_status_id: nil)
      com.valid?
      expect(com.errors[:order_status_id]).to include("を入力してください")
    end
    it "is invalid without a seller_or_buyer" do
      com = build(:communication, seller_or_buyer: nil)
      com.valid?
      expect(com.errors[:seller_or_buyer]).to include("を入力してください")
    end
end
