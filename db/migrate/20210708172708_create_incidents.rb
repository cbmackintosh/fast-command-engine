class CreateIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :incidents do |t|
      t.string :name
      t.string :summary
      t.string :slug

      t.timestamps
    end
  end
end
