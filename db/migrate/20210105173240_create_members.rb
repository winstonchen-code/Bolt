class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :age
      t.string :level
      t.string :email
      t.string :password_digest
    end
  end
end
