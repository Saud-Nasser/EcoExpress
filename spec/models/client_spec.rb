# == Schema Information
#
# Table name: clients
#
#  id              :integer          not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  remember_token  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_clients_on_email           (email) UNIQUE
#  index_clients_on_remember_token  (remember_token)
#
require 'rails_helper'

describe Client do

  before { @client = Client.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar") }

  subject { @client }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should be_valid }
  it { should respond_to(:authenticate) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }
  describe "when name is not present" do
    before { @client.name = " " }
    it { should_not be_valid }
  describe "when email is not present" do
    before { @client.email = " " }
    it { should_not be_valid }
  end
  end
    describe "when name is too long" do
    before { @client.name = "a" * 60 }
    it { should_not be_valid }
  end
    describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@ksu,com user_at_ksu.org example.user@ksu.
                     ksu@psau_sa.com ksu@psau+sa.com]
      addresses.each do |invalid_address|
        @client.email = invalid_address
        @client.should_not be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@ksu.COM A_US-ER@k.s.org frst.lst@ksu.jp a+b@ksu.cn]
      addresses.each do |valid_address|
        @client.email = valid_address
        @client.should be_valid
      end
    end
  end
  describe "when email address is already taken" do
    before do
      client_with_same_email = @client.dup
      client_with_same_email.email = @client.email.upcase
      client_with_same_email.save
    end

    it { should_not be_valid }
  end
  describe "when password is not present" do
    before { @client.password = @client.password_confirmation = " " }
    it { should_not be_valid }
    end
 describe "when password doesn't match confirmation" do
  before { @client.password_confirmation = "mismatch" }
  it { should_not be_valid }
end
describe "when password confirmation is nil" do
  before { @client.password_confirmation = nil }
  it { should_not be_valid }
end
describe "with a password that's too short" do
  before { @client.password = @client.password_confirmation = "a" * 5 }
  it { should be_invalid }
end
describe "return value of authenticate method" do
  before { @client.save }
  let(:found_client) { Client.find_by_email(@client.email) }

  describe "with valid password" do
    it { should == found_client.authenticate(@client.password) }
  end


 end
end
