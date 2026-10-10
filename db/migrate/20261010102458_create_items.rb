class CreateItems < ActiveRecord::Migration[8.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :status
      t.string :found_at
      t.string :contact
      t.boolean :resolved

      t.timestamps
    end
  end
end
