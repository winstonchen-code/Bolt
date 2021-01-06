class CreateRunSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :run_sessions do |t|
      t.string :instructor
      t.string :start_date
      t.integer :duration
      t.integer :location
      t.integer :capacity
      t.integer :run_class_id
    end
  end
end
