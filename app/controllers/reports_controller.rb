class ReportsController < ApplicationController
  def sale
    @sale_order = MedicineForm.order_for_sale
  end

  def histogram
    #@dates = Order.all.map { |order| order.created_at.month }
    @hash = Order.group('EXTRACT (MONTH from "created_at")').count
    @months = {}
    (0..4).each do |i|
      @months[i] = (Time.now - (3 - i).month).strftime('%B')
    end
  end

  def index
    @medicine_forms = MedicineForm.all
  end

  def left_on_storage
    @left_on_storage = MedicineForm.left_on_storage
  end
end
