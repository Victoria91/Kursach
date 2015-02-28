class ReportsController < ApplicationController
  def sale
    @sale_order = MedicineForm.order_for_sale
  end

  def histogram
  end

  def index
    @medicine_forms = MedicineForm.all
  end
end
