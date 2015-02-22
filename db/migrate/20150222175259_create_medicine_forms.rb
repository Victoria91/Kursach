class CreateMedicineForms < ActiveRecord::Migration
  def change
    create_table :medicine_forms do |t|
      t.references :medicine, index: true
      t.references :form, index: true
      t.integer :price
      t.integer :quantity_pack
      t.integer :quantity_storage

      t.timestamps
    end
  end
end
