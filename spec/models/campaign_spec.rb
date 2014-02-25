require 'spec_helper'

describe Campaign do
  
  let(:user) { FactoryGirl.create(:user) }
  before { @campaign = user.campaigns.build(name: "Fall", 
                                            backstory: "Save the world") }

  subject { @campaign }

  it { should respond_to(:name) }
  it { should respond_to(:user_id) }

  describe "with no name" do
    before { @campaign.name = ' ' }
    it { should_not be_valid }
  end
end
