# == Schema Information
#
# Table name: plates
#
#  id           :integer          not null, primary key
#  codeplate    :integer
#  nameplate    :string(255)
#  typeplate_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class PlateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
