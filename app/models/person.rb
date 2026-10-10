class Person < ApplicationRecord
    validates :name, presence: true
    validates :role, inclusion: { in: ["student","faculty","guest","other"] }
    validates :gender, inclusion: { in: ["female","male", "other"]}
end
