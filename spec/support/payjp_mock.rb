module PayjpMock
  def self.prepare_valid_charge
    {
      "amount": 3500,
      "amount_refunded": 0,
      "captured": true,
      "captured_at": 1433127983,
      "card": {
        "address_city": nil,
        "address_line1": nil,
        "address_line2": nil,
        "address_state": nil,
        "address_zip": nil,
        "address_zip_check": "unchecked",
        "brand": "Visa",
        "country": nil,
        "created": 1433127983,
        "customer": nil,
        "cvc_check": "unchecked",
        "exp_month": 12,
        "exp_year": 2020,
        "fingerprint": "e1d8225886e3a7211127df751c86787f",
        "id": "car_d0e44730f83b0a19ba6caee04160",
        "last4": "4242",
        "name": nil,
        "object": "card"
      },
      "created": 1433127983,
      "currency": "jpy",
      "customer": "cus_fe1beb3e434431c4c51c4b8137a4",
      "description": nil,
      "expired_at": nil,
      "failure_code": nil,
      "failure_message": nil,
      "id": "ch_fa990a4c10672a93053a774730b0a",
      "livemode": false,
      "metadata": nil,
      "object": "charge",
      "paid": true,
      "refund_reason": nil,
      "refunded": false,
      "subscription": nil
    }
  end
end
