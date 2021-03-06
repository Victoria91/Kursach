class Medicine < ActiveRecord::Base
  validates :name, :min, presence: true

  default_scope { order :created_at }

  belongs_to :sale
  has_many :medicine_replaces
  has_many :medicine_forms
  has_many :replaces, through: :medicine_replaces
  has_many :inverse_replacements, :class_name => "MedicineReplace", :foreign_key => "replacement_id"
  has_many :replacements, :through => :inverse_replacements, :source => :medicine

  # scope :orders, -> { joins(:medicine_forms).where('medicines.min >= medicine_forms.quantity_storage') }
end


