class Challenge < ApplicationRecord
    has_many :statistics 
    has_many :users, through: :statistics
end
