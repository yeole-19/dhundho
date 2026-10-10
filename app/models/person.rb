class Person < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :role, inclusion: { in: ["Student", "Faculty", "Staff", "Visitor", "Other"] }
  validates :gender, inclusion: { in: ["Male", "Female", "Non-binary", "Prefer not to say"] }
end