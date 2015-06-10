# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  created_at    :datetime
#  update_at     :datetime
#  address       :string(255)
#  phone         :string(255)
#  restaurant_id :integer
#  updated_at    :datetime
#

class Order < ActiveRecord::Base
end
