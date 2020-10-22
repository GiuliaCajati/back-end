class Character < ApplicationRecord
    has_many :relationships
    has_many :users, through: :relationships
    belongs_to :interest
end
