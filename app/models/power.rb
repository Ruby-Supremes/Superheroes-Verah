class Power < ApplicationRecord
    has_many :hero_powers, dependent: :destroy
    has_many :heroes, through: :hero_powers

    # description validation
    validates :description, presence: true, length: {minimum:20}
end
