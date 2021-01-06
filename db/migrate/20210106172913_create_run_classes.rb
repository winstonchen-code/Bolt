class CreateRunClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :run_classes do |t|
      t.string :name
      t.string :level
      t.string :description
    end
  end
end
