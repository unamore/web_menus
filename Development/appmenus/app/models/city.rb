# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  codename   :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class City < ActiveRecord::Base
    has_many :restaurants, dependent: :destroy
    
    validates :name, presence: true
    
end
