class ChangeIncidentRoleDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :contacts, :incident_role, 'integer USING CAST(incident_role AS integer)'
  end
end
