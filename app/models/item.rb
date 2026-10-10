class Item < ApplicationRecord
  belongs_to :person, optional: true
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :location, presence: true
  validates :status, inclusion: {
    in: %w[Lost Found]
  }
end