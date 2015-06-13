# == Schema Information
#
# Table name: plate_orders
#
#  id         :integer          not null, primary key
#  plate_id   :integer
#  order_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class PlateOrder < ActiveRecord::Base
    
    belongs_to :order    
    ###attr_accessible :mensaje
    ###attr_accessible :order
    
end
