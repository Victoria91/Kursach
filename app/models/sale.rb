class Sale < ActiveRecord::Base
  validates :name, presence: true
end
