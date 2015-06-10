# == Schema Information
#
# Table name: user_orders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  order_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class UserOrder < ActiveRecord::Base
end
