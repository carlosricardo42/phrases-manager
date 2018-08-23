class CreatePhrases < ActiveRecord::Migration[5.1]
  #Create the Phrases table
  def change
    create_table :phrases do |t|
      t.string :title
      t.text :content
      t.integer :visits, default: 0
      t.integer :votes, default: 0
      t.references :person, foreign_key: true #Add the reference to the people table

      t.timestamps
    end
  end
end
