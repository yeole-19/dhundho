class CreateComments < ActiveRecord::Migration[8.1]
  def change
    create_table :comments do |t|
      t.references :item, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.text :content
      t.boolean :resolved, default: false

      t.timestamps
    end
  end
end