class AddActiveToUserOrganization < ActiveRecord::Migration[7.0]
  def change
    add_column :user_organizations, :active, :boolean
  end
end
