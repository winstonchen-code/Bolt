class Gym < ApplicationRecord
    has_many :gym_classes
    has_many :run_classes, through: :gym_classes 
end