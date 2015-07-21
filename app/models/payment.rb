class Payment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :amount, :product_name, :customer_name,:is_signed, :date_of_birth, :address, :city, :state, :post_code, :country, :phone, :email, :card_number, :card_expiry, :card_cvv,:token,:ip_address
  has_one :sign, :dependent => :destroy
  validates :amount, :product_name, :customer_name, :address, :city, :state, 
            :post_code, :country,  :phone, :card_expiry,  
            :date_of_birth, presence: true
  validates :amount,  numericality: { only_float: true }
  validates :email, presence: true,
                    :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                    :message => 'is invalid!'},
                    :on => :create
end
