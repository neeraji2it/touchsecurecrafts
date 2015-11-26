class CreateContractSigns < ActiveRecord::Migration
  def change
    create_table :contract_signs do |t|
      t.references :contract, index: true
      t.text :signature
      t.timestamps
    end
  end
end
