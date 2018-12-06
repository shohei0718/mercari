class PaymentInformation < ApplicationRecord
  belongs_to :user

  validates :card_number,     presence: true
  validates :valid_year,      presence: true
  validates :valid_month,     presence: true
  validates :cvc,             numericality: true

end
