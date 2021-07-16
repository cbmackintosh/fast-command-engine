class AddColumnsToIncidents < ActiveRecord::Migration[6.1]
  def change
    add_column :incidents, :incident_type, :string
    add_column :incidents, :location, :string
  end
end
