class Medicine < ActiveRecord::Base
  validates :name, :min, presence: true

  default_scope { order :created_at }

  belongs_to :sale
end
