class AddActionToRoutes < ActiveRecord::Migration[7.0]
  def change
    add_column :routes, :action, :string
  end
end
