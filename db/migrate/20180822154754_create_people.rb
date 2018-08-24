=begin
  Class name: CreatePeople
  @Author: Carlos Ricardo Mora Sanchez
  @description: Migration to create the people table on the DB
=end
class CreatePeople < ActiveRecord::Migration[5.1]
  # Create the People table
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
