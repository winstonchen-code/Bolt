class RunSession < ApplicationRecord
    belongs_to :run_class
    has_many :enrollments
    
    has_many :members, through: :enrollments
end