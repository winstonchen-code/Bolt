class Gym < ApplicationRecord
    has_many :gym_classes
    has_many :classes, through: :gym_classes 
end