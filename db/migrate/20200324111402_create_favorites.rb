class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.belongs_to :user
      t.integer :country_id
      t.timestamps
    end
  end
end
