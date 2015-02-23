class MedicineForm < ActiveRecord::Base
  belongs_to :medicine
  belongs_to :form

  validates :medicine, :form, presence: true
end
