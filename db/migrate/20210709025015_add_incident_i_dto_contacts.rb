class AddIncidentIDtoContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :incident_id, :integer
  end
end
