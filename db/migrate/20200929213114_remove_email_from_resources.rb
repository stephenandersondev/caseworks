class RemoveEmailFromResources < ActiveRecord::Migration[6.0]
  def change
    remove_column :resources, :email
  end
end
