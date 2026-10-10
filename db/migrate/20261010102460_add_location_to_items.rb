class AddLocationToItems < ActiveRecord::Migration[8.1]
  def change
    add_column :items, :location, :string
  end
end