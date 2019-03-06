class PersonPerson < ApplicationRecord
    validates :first_name,:last_name, presence: true
    validates :age, numericality: { only_integer: true }
    validates :first_name,:last_name, length: {
    minimum: 3, 
    too_short: "Babe It is less than %{count} add more"
} 

end
