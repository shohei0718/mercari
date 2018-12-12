require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { create(:user) }

  describe 'GET #user_info' do

    context 'log in' do
      before do
        login user
        get :user_info, params: { id: user.id}, session: {}
      end

      it "responds successfully" do
        expect(response).to be_success
      end

      it "returns a 200 response" do
        expect(response).to have_http_status "200"
      end

      it "renders the :user_info template" do
        expect(response).to render_template :user_info
      end
    end

    context 'not log in' do
      before do
        get :user_info, params: { id: user.id }
      end

      it 'redirects to root_path' do
        expect(response).to redirect_to(root_path)
      end
    end

  end

end
