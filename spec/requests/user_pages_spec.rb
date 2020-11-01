require 'spec_helper'
require 'capybara/rspec'

describe "Client pages" do

  subject { page }
  
   describe "profile page" do
    let(:client) { FactoryGirl.create(:client) }
    before { visit client_path(client) }

    it { should have_selector('h1',    text: client.name) }
    it { should have_selector('title', text: client.name) }
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1', text: 'Sign up') }
    
  end
  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a client" do
        expect { click_button submit }.not_to change(Client, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end

      it "should create a client" do
        expect { click_button submit }.to change(Client, :count).by(1)
      end
    end
  end
end