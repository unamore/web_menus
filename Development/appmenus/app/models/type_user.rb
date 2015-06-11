# == Schema Information
#
# Table name: type_users
#
#  id         :integer          not null, primary key
#  codetype   :integer
#  nametype   :string(255)
#  created_at :datetime
#  update_at  :datetime
#  updated_at :datetime
#

class TypeUser < ActiveRecord::Base
end
