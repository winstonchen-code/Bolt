class Enrollment < ApplicationRecord
    belongs_to :member 
    belongs_to :class_session
end