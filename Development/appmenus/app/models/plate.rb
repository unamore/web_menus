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

class Plate < ActiveRecord::Base
  belongs_to :typeplate
end
