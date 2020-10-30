class AddPasswordDigestToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :password_digest, :string
  end
end
