class CreateSocialWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :social_workers do |t|
      t.string :name
      t.string :phone_number
      t.string :image_url
      t.string :location
      t.string :email
      t.string :specialty

      t.timestamps
    end
  end
end
