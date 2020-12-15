# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  details    :text
#  pickup     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer          not null
#
# Indexes
#
#  index_orders_on_client_id  (client_id)
#
# Foreign Keys
#
#  client_id  (client_id => clients.id)
#
class Order < ApplicationRecord
  belongs_to :client
end
