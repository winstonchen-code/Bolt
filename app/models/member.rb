class Member < ApplicationRecord
    has_many :enrollments 
    has_many :favorite_classes
    has_many :classes, through: : favorite_classes 

end