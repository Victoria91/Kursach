class SalesController < ApplicationController
  before_action :load_sale, except: [:index, :new, :create]
  
  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      redirect_to sales_path, notice: 'New sale has been saved'
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @sale.update(sale_params)
    if @sale.save
      redirect_to sales_path, notice: 'Sale has been updated'
    else
      render :edit
    end
  end

  def destroy
    @sale.destroy
    redirect_to sales_path, notice: 'Sale has been deleted'
  end

  private
  def sale_params
    params.require(:sale).permit(:name, :address, :bank_rekv)
  end

  def load_sale
    @sale = Sale.find(params[:id])
  end
end
