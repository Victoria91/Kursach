class CreateMedicineReplaces < ActiveRecord::Migration
  def change
    create_table :medicine_replaces do |t|
      t.references :medicine, index: true
      t.integer :replacement

      t.timestamps
    end
  end
end
