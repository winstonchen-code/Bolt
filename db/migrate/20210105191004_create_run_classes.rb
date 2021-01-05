class CreateRunClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :run_classes do |t|
      t.string :level
      t.string :instructor
      t.datetime :start_date
      t.integer :duration
      t.integer :location
    end
  end
end
