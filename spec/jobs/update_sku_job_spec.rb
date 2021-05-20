require 'rails_helper'

RSpec.describe UpdateSkuJob, type: :job do
  let(:link_name) {'eloquent_ruby'}

  before do
    allow(Net::HTTP).to receive(:start).and_return(true)
  end
  
  it 'calls SKU service with correct params' do
    expect_any_instance_of(Net::HTTP::Post).to receive(:body=).with(
      {sku: '123', name: link_name}.to_json
    )
    described_class.perform_now(link_name)
  end
end
