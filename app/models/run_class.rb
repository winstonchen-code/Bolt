class RunClass < ApplicationRecord
    has_many :gym_classes 
    has_many :run_sessions
    has_many :favorite_classes
    
    has_many :gyms, through: :gym_classes 
    has_many :members, through: :favorite_classes 
end