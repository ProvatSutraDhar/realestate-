class AddForSellToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :for_sell, :boolean, default: false
  end
end
