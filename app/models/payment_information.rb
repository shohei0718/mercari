class PaymentInformation < ApplicationRecord
  belongs_to :user

  validates :card_number,     presence: true,numericality: true, length: { is: 16 }
  validates :valid_year,      presence: true
  validates :valid_month,     presence: true
  validates :cvc,             presence: true,numericality: true,length: { in:3..4 }

end
