class ReportsController < ApplicationController
  def sale
    @sale_order = Medicine.orders
  end

  def histogram
  end
end
