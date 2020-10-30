class AddIndexToClientsEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :clients, :email, unique: true
  end
end
