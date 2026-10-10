class Comment < ApplicationRecord
  belongs_to :item
  belongs_to :person

  validates :content, presence: true
end