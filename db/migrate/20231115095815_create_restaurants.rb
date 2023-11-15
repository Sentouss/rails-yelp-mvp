class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :string
      t.string :phone_number
      t.integer :category

      t.timestamps
    end
  end
end
