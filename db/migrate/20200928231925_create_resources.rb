class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :categories
      t.string :image_url
      t.string :description
      t.string :hours
      t.string :web_address

      t.timestamps
    end
  end
end
