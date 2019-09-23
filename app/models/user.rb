class User < ApplicationRecord
has_many :statistics 
has_many :challenges, through: :statistics
end
