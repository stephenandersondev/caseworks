class RemoveLocationFromSocialWorkers < ActiveRecord::Migration[6.0]
  def change
    remove_column :social_workers, :location
  end
end
