class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :social_worker, null: false, foreign_key: true
      t.belongs_to :resource, null: false, foreign_key: true
      t.string :focus
      t.string :status

      t.timestamps
    end
  end
end
