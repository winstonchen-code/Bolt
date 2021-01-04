class CreateClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :classes do |t|
      t.string :instructor
      t.string :time
      t.string :location
      t.string :duration
    end
  end
end
