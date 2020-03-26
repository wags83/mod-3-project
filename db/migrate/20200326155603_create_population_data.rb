class CreatePopulationData < ActiveRecord::Migration[6.0]
  def change
    create_table :population_data do |t|
      t.belongs_to :country
      t.float :cases
      t.float :deaths
      t.float :recovered
      t.string :date
      t.timestamps
    end
  end
end
