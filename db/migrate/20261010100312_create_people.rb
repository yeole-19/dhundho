class CreatePeople < ActiveRecord::Migration[8.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :role
      t.string :gender

      t.timestamps
    end
  end
end
