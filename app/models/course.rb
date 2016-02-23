# == Schema Information
#
# Table name: courses
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#  email_opt_in :boolean
#

class Course < ActiveRecord::Base
  attr_accessible :name, :user_id, :id
  has_many :waivers
  belongs_to :user

end
