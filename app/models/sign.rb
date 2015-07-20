class Sign < ActiveRecord::Base
  attr_accessible :signature,:payment_id
  belongs_to :payment
   validates :payment_id, presence: true
end
