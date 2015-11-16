class CreateIciciSigns < ActiveRecord::Migration
  def change
    create_table :icici_signs do |t|
      t.references :icici_payment, index: true
      t.text :signature
      t.timestamps
    end
  end
end
