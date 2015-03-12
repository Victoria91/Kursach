class MedicineFormsController < ApplicationController
  before_action :load_medicine_form, except: [:index, :new, :create]
  
  def index
    @medicine_forms = MedicineForm.all
  end

  def new
    @medicine_form = MedicineForm.new
  end

  def create
    @medicine_form = MedicineForm.new(medicine_form_params)
    if @medicine_form.save
      redirect_to medicine_forms_path, notice: 'New medicine form has been saved'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @medicine_form.update(medicine_form_params)
    if @medicine_form.save
      redirect_to medicine_forms_path, notice: 'Medicine form has been updated'
    else
      render :edit
    end
  end

  def buy
    @medicine_form.buy!
  end

  def destroy
    @medicine_form.destroy
    redirect_to medicine_forms_path, notice: 'Medicine form has been deleted'
  end

  private
  def medicine_form_params
    params.require(:medicine_form).permit(:medicine_id, :form_id, :quantity_pack, :quantity_storage, :price)
  end

  def load_medicine_form
    @medicine_form = MedicineForm.find(params[:id])
  end
end
