class AddEncounterIdToCreature < ActiveRecord::Migration
  def change
    add_column :creatures, :encounter_id, :integer
  end
end
