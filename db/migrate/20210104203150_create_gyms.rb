class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :location
      t.string :email
      t.string :phone
    end
  end
end
