class AddAgeToPersonPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :person_people, :age, :integer
  end
end
