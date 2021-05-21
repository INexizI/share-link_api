require 'rails_helper'

describe 'Authentication', type: :request do
  describe 'POST /authenticate' do
    let (:user) {FactoryBot.create(:user, username: 'UserLinker035', password: 'blah')}

    it 'authenticates the client' do
      post '/api/v1/authenticate', params: {username: user.username, password: 'blah'}

      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)).to eq({
        'token' => 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1fQ.YdUeKzPfpTFVgbh0nu3t0s4Z-zIHA6ocRV1sww29flg'
      })
    end

    # it 'return error when username is missing' do
    #   post '/api/v1/authenticate', params: {password: 'pa55w0rd'}
    #
    #   expect(response).to have_http_status(:unprocessable_entity)
    #   expect(JSON.parse(response.body)).to eq({
    #     'error' => 'param is missing or the value is empty: username'
    #   })
    # end
    #
    # it 'return error when password is missing' do
    #   post '/api/v1/authenticate', params: {username: 'UserLinker035'}
    #
    #   expect(response).to have_http_status(:unprocessable_entity)
    #   expect(JSON.parse(response.body)).to eq({
    #     'error' => 'param is missing or the value is epmty: password'
    #   })
    # end

    it 'return error when password is incorrect' do
      post '/api/v1/authenticate', params: {username: user.username, password: 'incorrect'}

      expect(response).to have_http_status(:unauthorized)
    end
  end
end
