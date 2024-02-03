class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES }
  validates_presence_of :name, :address, :category
  has_many :reviews, dependent: :destroy
end
