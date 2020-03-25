class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.belongs_to :country
      t.integer :cases
      t.integer :deaths
      t.integer :recovered
      t.string :date
      t.timestamps
    end
  end
end
