class AddColumnToSpreeLineItems < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_line_items, :cart_count, :integer
  end
end
