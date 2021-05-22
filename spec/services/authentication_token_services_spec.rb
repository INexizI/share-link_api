require 'rails_helper'

describe AuthenticationTokenServices do
  describe '.call' do
    let (:token) {described_class.call(1)}
    it 'return an authentication token' do
      hmac_secret = 'nff2nwni.ef2904nf4'
      decoded_token = JWT.decode(
        token,
        described_class::HMAC_SECRET,
        true,
        { algorithm: described_class::ALGORITHM_TYPE }
      )

      expect(decoded_token).to eq(
        [
          {"user_id" => 1},
          {"alg" => "HS256"}
        ]
      )
    end
  end
end
