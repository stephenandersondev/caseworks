class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone_number
      t.string :image_url
      t.string :location
      t.string :email

      t.timestamps
    end
  end
end
