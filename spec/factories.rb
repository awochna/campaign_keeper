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
  end
end
