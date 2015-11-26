class ContractSign < ActiveRecord::Base
  attr_accessible :signature,:contract_id
  belongs_to :contract
  validates :contract_id, presence: true
end
