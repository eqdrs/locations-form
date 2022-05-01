class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :street
      t.string :postal_code
      t.string :country

      t.timestamps
    end

    add_index :locations, %i[street city postal_code]
  end
end
