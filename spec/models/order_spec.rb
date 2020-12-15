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
require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
