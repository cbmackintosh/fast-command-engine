class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.belongs_to :incident, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :incident_parent
      t.string :incident_role
      t.string :type
      t.string :name
      t.string :jobtitle
      t.string :organization
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
