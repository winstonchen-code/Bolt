class Class < ApplicationRecord
    has_many :gym_classes 
    has_many :class_sessions 
    has_many :favorite_classes 
end

hey winston