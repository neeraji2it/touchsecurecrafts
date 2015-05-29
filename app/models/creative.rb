class Creative < ActiveRecord::Base
  attr_accessible :budget, :email, :name, :phone, :space
   validates :name, :email, :phone,  :space, :presence => true
     validates :budget, :numericality => {:greater_than_or_equal_to => 1}, :presence => true

end
