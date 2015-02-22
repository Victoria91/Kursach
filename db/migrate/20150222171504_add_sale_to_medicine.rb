class AddSaleToMedicine < ActiveRecord::Migration
  def change
    add_reference :medicines, :sale, index: true
  end
end
