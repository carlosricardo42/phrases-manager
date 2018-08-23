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
