class AddStatsToCreatures < ActiveRecord::Migration
  def change
    new_columns = { hit_points: :string, strength: :integer, 
                    dexterity: :integer, constitution: :integer,
                    intelligence: :integer, wisdom: :integer,
                    charisma: :integer, melee: :string, ranged: :string,
                    special_attacks: :string, init: :integer,
                    senses: :string, size: :string, type: :string,
                    alignment: :string, natural_armor: :integer,
                    fortitude: :integer, reflex: :integer, 
                    will: :integer, damage_reduction: :string,
                    immunities: :string, speed: :integer, space: :integer,
                    reach: :integer, base_attack: :integer, cmb: :integer,
                    cmd: :integer, languages: :string, 
                    special_abilities: :string }
    new_columns.each do |key, value|
      add_column :creatures, key, value
    end
  end
end
