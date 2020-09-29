class AddAgeToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :age, :integer
  end
end
