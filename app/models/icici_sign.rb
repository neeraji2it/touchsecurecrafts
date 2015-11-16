class IciciSign < ActiveRecord::Base
  attr_accessible :signature,:icici_payment_id
  belongs_to :icici_payment
  validates :icici_payment_id, presence: true
end
