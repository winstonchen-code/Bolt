class ClassSession < ApplicationRecord
    belongs_to :class
    has_many :enrollments 

end