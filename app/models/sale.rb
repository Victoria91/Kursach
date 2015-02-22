class Sale < ActiveRecord::Base
  has_many :medicines

  validates :name, presence: true
end
