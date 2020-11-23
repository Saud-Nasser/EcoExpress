require 'spec_helper'
require 'capybara/rspec'

describe "Client pages" do

  subject { page }
  
   describe "profile page" do
    let(:client) { FactoryGirl.create(:client) }
    before { visit client_path(client) }
    it { should have_selector('h1',    text: client.name) }
    
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1', text: 'Sign up') }
    
  end
  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create an account" }

    describe "with invalid information" do
      it "should not create a client" do
        expect { click_button submit }.not_to change(Client, :count)
      end
    end

    #describe "with valid information" do
     # before do
       # fill_in "name",         with: 'ahmed ali'
      #  fill_in "Email",        with: "user@example.com"
       # fill_in "Password",     with: "123456"
        #fill_in "Confirmation", with: "123456"
      #end

     # it "should create a client" do
      #  expect { click_button submit }.to change(Client, :count).by(1)
      #end
   # end
  end
   describe "edit" do
    let(:client) { FactoryGirl.create(:client) }
    before { visit edit_user_path(client) }

    describe "page" do
      it { should have_selector('h1',    text: "Update your profile") }
      it { should have_selector('title', text: "Edit user") }
    end

    describe "with invalid information" do
      before { click_button "Save changes" }

      it { should have_content('error') }
    end
  end
end