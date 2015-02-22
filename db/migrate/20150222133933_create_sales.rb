class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :name
      t.string :address
      t.string :bank_rekv

      t.timestamps
    end
  end
end
