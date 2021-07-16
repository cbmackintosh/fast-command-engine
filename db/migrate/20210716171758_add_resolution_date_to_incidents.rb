class AddResolutionDateToIncidents < ActiveRecord::Migration[6.1]
  def change
    add_column :incidents, :resolved_at, :datetime
  end
end
