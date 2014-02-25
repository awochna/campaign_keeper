require 'spec_helper'

describe User do
  
  let(:user) { FactoryGirl.create(:user) }

  subject { user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }

  context "information is missing" do

    describe "name" do
      before { user.name = '' }
      it { should_not be_valid }
    end

    describe "email" do
      before { user.email = '' }
      it { should_not be_valid }
    end

    describe "password"
    
    describe "password confirmation"

  end

  context "email format" do

    describe "invalid"

    describe "valid"
  end

  describe "email is taken"
end
