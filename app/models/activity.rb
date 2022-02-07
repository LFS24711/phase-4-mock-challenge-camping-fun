class Activity < ApplicationRecord
    has_many :signup, dependent: destroy
    has_many :campers, through: :signups
end
