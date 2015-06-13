# == Schema Information
#
# Table name: typeplates
#
#  id         :integer          not null, primary key
#  codetype   :integer
#  nametype   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Typeplate < ActiveRecord::Base
    has_many :plates, dependent: :destroy
  validates :nametype, presence: true
  
end
