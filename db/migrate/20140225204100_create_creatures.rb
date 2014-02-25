class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :name
      t.float :cr

      t.timestamps
    end
  end
end
