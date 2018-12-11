require 'rails_helper'

describe User do
  describe '#create' do
    it "is valid with a nickname, email, password, password_confirmation, first_name, first_name_kana,last_name_,last_name_kana,cuty,address,zip_code,telephone,birth_year,birth_day,birth_month" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a nickname" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
    end

    it "is invalid without a first_name" do
      user = build(:user, first_name: nil)
      user.valid?
      expect(user.errors[:first_name]).to include("を入力してください")
    end

    it "is invalid without a last_name" do
      user = build(:user, last_name: nil)
      user.valid?
      expect(user.errors[:last_name]).to include("を入力してください")
    end

    it "is invalid without a first_name_kana" do
      user = build(:user, first_name_kana: nil)
      user.valid?
      expect(user.errors[:first_name_kana]).to include("を入力してください")
    end

    it "is invalid without a last_name_kana" do
      user = build(:user, last_name_kana: nil)
      user.valid?
      expect(user.errors[:last_name_kana]).to include("を入力してください")
    end

    it "is invalid without a city" do
      user = build(:user, city: nil)
      user.valid?
      expect(user.errors[:city]).to include("を入力してください")
    end

    it "is invalid without a address" do
      user = build(:user, address: nil)
      user.valid?
      expect(user.errors[:address]).to include("を入力してください")
    end

    it "is invalid without a zip_code" do
      user = build(:user, zip_code: nil)
      user.valid?
      expect(user.errors[:zip_code]).to include("を入力してください")
    end

    it "is invalid without a telephone" do
      user = build(:user, telephone: nil)
      user.valid?
      expect(user.errors[:telephone]).to include("を入力してください")
    end

    it "is invalid without a birth_year" do
      user = build(:user, birth_year: nil)
      user.valid?
      expect(user.errors[:birth_year]).to include("を入力してください")
    end

    it "is invalid without a birth_month" do
      user = build(:user, birth_month: nil)
      user.valid?
      expect(user.errors[:birth_month]).to include("を入力してください")
    end

    it "is invalid without a birth_day" do
      user = build(:user, birth_day: nil)
      user.valid?
      expect(user.errors[:birth_day]).to include("を入力してください")
    end

    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it "is invalid with a password that has less than 5 characters " do
      user = build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password][0]).to include("は6文字以上で入力してください")
    end


    it "is invalid with a zip_code that has more than 8 characters " do
      user = build(:user, zip_code: "12345678")
      user.valid?
      expect(user.errors[:zip_code][0]).to include("は7文字以内で入力してください")
    end

    it "is invalid with a zip_code that has less than 6 characters " do
      user = build(:user, zip_code: "123456")
      user.valid?
      expect(user.errors[:zip_code][0]).to include("7文字以上で入力してください")
    end


  end

end
