# == Schema Information
#
# Table name: clients
#
#  id              :bigint           not null, primary key
#  admin           :boolean          default(FALSE)
#  district        :string
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
class Client < ActiveRecord::Base
  has_many :orders
  attr_accessible :name, :email, :district, :password, :password_confirmation, :admin
  has_secure_password
   before_save { |client| client.email = email.downcase }
   before_save :create_remember_token
  validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :district, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
