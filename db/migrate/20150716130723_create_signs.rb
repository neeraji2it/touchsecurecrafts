class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.references :payment, index: true
      #t.integer :payment_id, index: true
      # t.json :signature
      t.text :signature
      t.timestamps
    end
  end
end
