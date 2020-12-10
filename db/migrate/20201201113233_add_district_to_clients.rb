class AddDistrictToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :district, :string
  end
end
