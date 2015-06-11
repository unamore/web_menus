# == Schema Information
#
# Table name: menus
#
#  id            :integer          not null, primary key
#  date_menu     :datetime
#  date_end      :datetime
#  restaurant_id :integer
#  plate_id      :integer
#  created_at    :datetime
#  updated_at    :datetime
#  price         :integer
#

class Menu < ActiveRecord::Base
    
    belongs_to :restaurant
    
end
