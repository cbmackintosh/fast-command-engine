class AddIncidentTitleToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :incident_title, :string
  end
end
