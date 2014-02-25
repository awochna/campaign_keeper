class AddBackstoryToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :backstory, :string
  end
end
