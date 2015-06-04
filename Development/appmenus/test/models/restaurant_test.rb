# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  coderest    :integer
#  namerest    :string(255)
#  adressrest  :string(255)
#  contactrest :string(255)
#  emailrest   :string(255)
#  city_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
