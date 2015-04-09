class MedicineFormsController < ApplicationController
  before_action :load_medicine_form, except: [:index, :new, :create]
  
  def index
    @medicine_forms = MedicineForm.find_by_sql 'SELECT "medicine_forms".* FROM "medicine_forms"'
  end

  def new
    @medicine_form = MedicineForm.new
  end

  def create
    params = set_params_for_query
    @medicine_form = MedicineForm.new(medicine_form_params)
    if @medicine_form.valid?
      ActiveRecord::Base.connection.execute(%Q(INSERT INTO "medicine_forms" (#{params.keys.join(",")}) VALUES (#{params.values.join(",")}) RETURNING "id" ))
      redirect_to medicine_forms_path, notice: 'New medicine form has been saved'
    else
      render :new
    end
  end

  def edit
  end

  def update
    params = set_params_for_query
    @medicine_form.update(medicine_form_params)
    if @medicine_form.valid?
      ActiveRecord::Base.connection.execute(%Q(UPDATE "medicine_forms" SET #{params.to_s.gsub(/["{:>}]/,'')} WHERE "medicine_forms"."id" = '#{@medicine_form.id}' ))
      redirect_to medicine_forms_path, notice: 'Medicine form has been updated'
    else
      render :edit
    end
  end

  def buy
    @medicine_form.buy!
  end

  def destroy
    ActiveRecord::Base.connection.execute(%Q(DELETE from "medicine_forms" WHERE "medicine_forms"."id" = '#{@medicine_form.id}'))
    redirect_to medicine_forms_path, notice: 'Medicine form has been deleted'
  end

  private
  def medicine_form_params
    params.require(:medicine_form).permit(:medicine_id, :form_id, :quantity_pack, :quantity_storage, :price)
  end

  def load_medicine_form
    @medicine_form = MedicineForm.find_by_sql(['SELECT  "medicine_forms".* FROM "medicine_forms"  WHERE "medicine_forms"."id" = ?', params[:id]]).first
  end

  def set_params_for_query
    params = medicine_form_params
    params.reject! { |k,v| v.blank? }
    time_value = "'" + Time.now.to_formatted_s(:db) + "'"
    params.merge!(updated_at: time_value)
    params.merge!(created_at: time_value) unless @medicine_form
    params
  end
end
