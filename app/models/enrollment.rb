class Enrollment < ApplicationRecord
    belongs_to :member 
    belongs_to :run_class
end