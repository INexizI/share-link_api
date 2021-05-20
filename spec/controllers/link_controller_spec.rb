require 'rails_helper'

RSpec.describe Api::V1::LinksController, type: :controller do
  describe 'POST create' do
    let(:link_name) {'TEST SPEC'}

    it 'calls UpdateSkuJob with correct params' do
      expect(UpdateSkuJob).to receive(:perform_later).with(link_name)

      post :create, params: {
        link: {
          title: link_name,
          text: 'SPEC PASS'
        }
      }
    end
  end
end
