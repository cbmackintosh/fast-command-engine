class AddJobInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :jobtitle, :string
    add_column :users, :organization, :string
  end
end
