class IncreaseParentIdIntegerLimit < ActiveRecord::Migration[6.1]
  def change
    change_column :contacts, :incident_parent, :integer, limit: 8
  end
end
