class MedicinesController < ApplicationController
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
    @medicine = Medicine.find(params[:id])
  end

  def update
    @medicine = Medicine.find(params[:id])
    @medicine.update(medicine_params)
    if @medicine.save
      redirect_to medicines_path, notice: 'Medicine has been updated'
    else
      render :edit
    end
  end

  def destroy
    @medicine = Medicine.find(params[:id])
    @medicine.destroy
    redirect_to medicines_path, notice: 'Medicine has been deleted'
  end

  private
  def medicine_params
    params.require(:medicine).permit(:name, :min)
  end
end
