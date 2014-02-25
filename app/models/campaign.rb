class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :encounters
  has_many :npcs
  validates :name, presence: true
end
