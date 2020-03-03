class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, presence: true
      t.string :address, presence: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
