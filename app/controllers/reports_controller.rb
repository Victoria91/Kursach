class ReportsController < ApplicationController
  def sale
    @sale_order = MedicineForm.order_for_sale
  end

  def histogram
  end

  def index
    @medicine_forms = MedicineForm.all
  end

  def left_on_storage
    @left_on_storage = MedicineForm.left_on_storage
  end
end
