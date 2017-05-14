require 'rails_helper'

RSpec.describe Api::AuthenticateController, type: :controller do
  before do
    create(:admin_player) do |player|
      @link_token = create(:link_token,player: player)
    end
  end
  describe 'POST index' do
    context 'with valid token' do
      let :valid_token { @link_token.token }
      it 'returns 200 ok' do
        post :index,params: { token:valid_token }
        expect(response).to have_http_status(200)
      end
    end
    context 'missing token' do
      it 'returns 400 bad request' do
        post :index
        expect(response).to have_http_status(400)
      end
    end
    context 'with invalid token' do
      it 'returns 401 unauthorized' do
        post :index,params: { token:@link_token.token + "woolala" }
        expect(response).to have_http_status(401)
      end
    end
  end

end
