class RemoveIncidentIdFromContacts < ActiveRecord::Migration[6.1]
  def change
    remove_reference :contacts, :incident, null: false, foreign_key: true
  end
end
