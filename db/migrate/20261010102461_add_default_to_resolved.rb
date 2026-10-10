class AddDefaultToResolved < ActiveRecord::Migration[8.1]
  def change
    change_column_default :items, :resolved, from: nil, to: false
  end
end