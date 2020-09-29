class RemoveLocationFromClients < ActiveRecord::Migration[6.0]
  def change
    remove_column :clients, :location
  end
end
