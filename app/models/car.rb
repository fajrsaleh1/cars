class Car < ApplicationRecord
    validates :make,:model,:year,:moonroof,:color,presence: true 
    validates :year, length: { minimum: 4,
    too_short: "the year is too short"}
end
