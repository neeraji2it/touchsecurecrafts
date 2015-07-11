class Creative < ActiveRecord::Base
  attr_accessible :budget, :email, :name, :phone, :space,:alternate_phone,:billing_address, :city,:country, :postal_code
  validates :name, :email,  :billing_address,:postal_code,:city,:country, :presence => true
  validates :budget, :numericality => {:greater_than_or_equal_to => 1}, :presence => true
  validates :phone, length: {minimum: 10, maximum: 12},:numericality => true
end
