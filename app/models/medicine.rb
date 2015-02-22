class Medicine < ActiveRecord::Base
  validates :name, :min, presence: true
end
