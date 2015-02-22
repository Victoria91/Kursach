class MedicinesController < ApplicationController
  before_action :load_medicine, only: [:edit, :update, :destroy]
  def index
    @medicines = Medicine.all
  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = Medicine.new(medicine_params)
    if @medicine.save
      redirect_to medicines_path, notice: 'New medicine has been saved'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @medicine.update(medicine_params)
    if @medicine.save
      redirect_to medicines_path, notice: 'Medicine has been updated'
    else
      render :edit
    end
  end

  def destroy
    @medicine.destroy
    redirect_to medicines_path, notice: 'Medicine has been deleted'
  end

  private
  def medicine_params
    params.require(:medicine).permit(:name, :min, :sale_id)
  end

  def load_medicine
    @medicine = Medicine.find(params[:id])
  end
end
