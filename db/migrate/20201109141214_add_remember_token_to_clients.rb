class AddRememberTokenToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :remember_token, :string
    add_index  :clients, :remember_token
  end
end
