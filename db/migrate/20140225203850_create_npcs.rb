class CreateNpcs < ActiveRecord::Migration
  def change
    create_table :npcs do |t|
      t.string :name
      t.integer :campaign_id

      t.timestamps
    end
  end
end
