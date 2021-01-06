class Gym < ApplicationRecord
    has_many :gym_classes
    has_many :run_classes, through: :gym_classes 

    def display_name
        return self.location.titlecase
    end

    def self.indoor
        Gym.where(indoor_or_outdoor: true)
    end

    def self.outdoor 
        Gym.where(indoor_or_outdoor: false)
    end

end