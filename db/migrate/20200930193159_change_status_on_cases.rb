class ChangeStatusOnCases < ActiveRecord::Migration[6.0]
  def change
    change_column_default :cases, :status, "open"
  end
end
