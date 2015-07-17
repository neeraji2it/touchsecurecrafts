class Sign < ActiveRecord::Base
  attr_accessible :signature,:payment_id
  belongs_to :payment
end
