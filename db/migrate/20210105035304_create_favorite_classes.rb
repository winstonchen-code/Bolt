class CreateFavoriteClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_classes do |t|
      t.integer :member_id
      t.integer :run_class_id
    end
  end
end
