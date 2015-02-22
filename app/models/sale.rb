class Sale < ActiveRecord::Base
  validate :name, presence: true
end
