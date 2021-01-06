class Member < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true 
    validates :password, presence: true
    validates :age, presence: true

    has_secure_password
    
    has_many :enrollments 
    has_many :favorite_classes
    has_many :run_classes, through: :favorite_classes 
    has_many :run_sessions, through: :enrollments 

end