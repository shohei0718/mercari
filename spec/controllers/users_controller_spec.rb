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

  describe 'PATCH #update' do
    let(:user) { create(:user) }
    let(:update_attributes) do
      { nickname: 'up_nickname',
       }
    end
    let(:cannot_update_attributes) do
      {nickname: nil}
    end

    context 'log in' do

      before do
        login user
      end

      context 'can save' do
        it "can updated" do
          patch :update, params: { id: user.id, user: update_attributes }, session: {}
          user.reload
          expect(user.nickname).to eq update_attributes[:nickname]
        end

        it "redirects the page to user_path(current_user.id)" do
          patch :update, params: { id: user.id, user: update_attributes }, session: {}
          user.reload
          expect(response).to redirect_to(user_path(user.id))
        end
      end

      context 'can not save' do
        it "can not update" do
          patch :update, params: {id: user.id, user: cannot_update_attributes}
          user.reload
          expect(user.nickname).to eq "aaaaa"
        end

        it "redirects the page to user_path(current_user.id)" do
          patch :update, params: { id: user.id, user: cannot_update_attributes }, session: {}
          user.reload
          expect(response).to redirect_to(user_path(user.id))
        end
      end

    end

    context 'not log in' do
      it "can not update" do
        patch :update, params: {id: user.id, user: update_attributes}
        user.reload
        expect(user.nickname).to eq "aaaaa"
      end

      it "redirects the page to user_path(current_user.id)" do
        patch :update, params: { id: user.id, user: update_attributes }, session: {}
        user.reload
        expect(response).to redirect_to(root_path)
      end
    end
  end

  describe 'GET #edit' do

    context 'log in' do
      before do
        login user
        get :edit, params: { id: user.id}, session: {}
      end

      it "responds successfully" do
        expect(response).to be_success
      end

      it "returns a 200 response" do
        expect(response).to have_http_status "200"
      end

      it "renders the :edit template" do
        expect(response).to render_template :edit
      end
    end

    context 'not log in' do
      before do
        get :edit, params: { id: user.id }
      end

      it 'redirects to root_path' do
        expect(response).to redirect_to(root_path)
      end
    end

  end

end

