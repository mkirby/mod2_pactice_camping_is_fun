class Activity < ApplicationRecord
    has_many :signups
    has_many :campers, through: :signups
    validates :name, :difficulty, presence: true
    validates :difficulty, numericality: { only_integer: true }
end
