class CreateGymClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :gym_classes do |t|
      t.integer :gym_id
      t.integer :run_class_id
    end
  end
end
