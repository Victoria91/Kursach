class MedicineForm < ActiveRecord::Base
  belongs_to :medicine
  belongs_to :form

  validates :medicine, :form, presence: true

  scope :order_for_sale, -> { joins(:medicine).where('medicines.min >= medicine_forms.quantity_storage') }

end
