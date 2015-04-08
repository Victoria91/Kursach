class ReportsController < ApplicationController
  def sale
    @sale_order = MedicineForm.order_for_sale
  end

  def histogram
    @hash = Order.group('EXTRACT (MONTH from "created_at")').count
    count_dec = @hash.delete(12.0)
    @hash[0.0] = count_dec
    counts = @hash.map { |k,v| v }
    @max = counts.max
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
