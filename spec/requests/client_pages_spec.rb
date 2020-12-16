require 'spec_helper'
require 'capybara/rspec'

describe "Client pages" do

  subject { page }
  
   describe "profile page" do
    let(:client) { FactoryBot.create(:client) }
    before { visit client_path(client) }
    it { should have_content("Name") }
    
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_content("Name") }

  end
  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create an account" }

    describe "with invalid information" do
      it "should not create a client" do
        expect { click_button submit }.not_to change(Client, :count)
      end
    end


  end
  
   describe "edit client" do
    let(:client) { FactoryBot.create(:client) }
    before { visit edit_client_path(client) }
    
    let(:submit) { "Save changes" }
    
    describe "page" do
      it { should have_content("Update your profile") }
      it { should have_selector('title', text: "Edit Client") }
    end
    
    
    describe "with invalid information" do
      it { should have_content('error') }
      before { click_button submit }
      
    end
  end
end