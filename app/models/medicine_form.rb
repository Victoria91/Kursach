class MedicineForm < ActiveRecord::Base
  belongs_to :medicine
  belongs_to :form

  validates :medicine, :form, presence: true

  scope :order_for_sale, -> { joins(:medicine).where('medicines.min >= medicine_forms.quantity_storage') }
  #scope :order_for_sale, -> { joins(:medicine).select('medicines.sale_id, medicines.min, medicine_forms.quantity_storage').group('medicines.sale_id, medicines.min').having('medicines.min >= medicine_forms.quantity_storage') }

end
