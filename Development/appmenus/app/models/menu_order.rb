# == Schema Information
#
# Table name: menu_orders
#
#  id         :integer          not null, primary key
#  menu_id    :integer
#  order_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class MenuOrder < ActiveRecord::Base
end
