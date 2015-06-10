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

class Restaurant < ActiveRecord::Base
  belongs_to :city
  validates :namerest, presence: true
  validates :adressrest, presence: true
  validates :contactrest, presence: true
  validates :emailrest, presence: true
end
