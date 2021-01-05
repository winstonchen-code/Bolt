class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :location
      t.string :email
      t.string :phone
      t.boolean :indoor_or_outdoor
      t.string :hours_open
    end
  end
end
