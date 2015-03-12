class MedicineForm < ActiveRecord::Base
  belongs_to :medicine
  belongs_to :form
  has_many :orders

  validates :medicine, :form, presence: true

  default_scope { order :created_at }

  scope :order_for_sale, -> { joins(:medicine).where('medicines.min >= medicine_forms.quantity_storage') }

  def buy!
    if quantity_storage > 0
      update(quantity_storage: quantity_storage - 1)
      orders.create(medicine_form: self)
    end
  end
end
