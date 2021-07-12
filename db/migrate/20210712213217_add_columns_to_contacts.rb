class AddColumnsToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :point_of_contact, :string
    add_column :contacts, :point_of_contact_title, :string
  end
end
