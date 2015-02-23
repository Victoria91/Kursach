class MedicineReplace < ActiveRecord::Base
  belongs_to :medicine
  #has_many :medicine_replaces
  belongs_to :replacement, class_name: 'Medicine'
end
