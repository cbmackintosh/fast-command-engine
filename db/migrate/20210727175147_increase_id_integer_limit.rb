class IncreaseIdIntegerLimit < ActiveRecord::Migration[6.1]
  def change
    change_column :contacts, :incident_role, :integer, limit: 8
  end
end
