FactoryGirl.define do
  factory :user do
    name                  "awochna"
    email                 "awochna@awochna.com"
    password              "foobar"
    password_confirmation "foobar"
  end
  
  factory :campaign do
    name        "Fall of Mystra"
    backstory   "A mysterious adventures' guild has more power than they should"
    association :user, factory: :user
  end

  factory :npc do
    name  "Kimblee"
    association :campaign, factory: :campaign
  end

  factory :encounter do
    name  "Encounter 1"
    story "The adventurers find themselves in a cave..."
    association :campaign, factory: :campaign
  end

  factory :creature do
    name  "Flesh Golem"
    cr    8
    association :encounter, factory: :encounter
  end
end
