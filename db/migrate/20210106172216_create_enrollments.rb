class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|
      t.integer :member_id
      t.integer :run_session_id
    end
  end
end
