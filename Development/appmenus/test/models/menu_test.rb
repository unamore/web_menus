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

require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
