class CreateClassSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :class_sessions do |t|
      t.integer :class_id
    end
  end
end
