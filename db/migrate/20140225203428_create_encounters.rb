class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :name
      t.integer :campaign_id
      t.string :story

      t.timestamps
    end
  end
end
