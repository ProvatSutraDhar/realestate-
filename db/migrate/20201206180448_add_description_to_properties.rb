class AddDescriptionToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :description, :text, default: " "
  end
end
