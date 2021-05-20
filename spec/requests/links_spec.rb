require 'rails_helper'

describe 'Share-Link API', type: :request do
  describe 'GET /links' do
    before do
      FactoryBot.create(:link, title: 'first', text: 'qwe')
      FactoryBot.create(:link, title: 'second', text: 'asd')
      FactoryBot.create(:link, title: 'third', text: 'zxc')
    end

    it 'return all links' do
      get '/api/v1/links'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end

  describe 'POST /links' do
    it 'create a new link' do
      expect {
        post '/api/v1/links', params: {link: {title: 'A new Link', text: 'Something...'}}
      }.to change {Link.count}.from(0).to(1)

      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /links/:id' do
    let!(:link) {FactoryBot.create(:link, title: 'first', text: 'qwe')}

    it 'delete a link' do
      expect {
        delete "/api/v1/links/#{link.id}"
      }.to change {Link.count}.from(1).to(0)

      expect(response).to have_http_status(:ok)
    end
  end
end
