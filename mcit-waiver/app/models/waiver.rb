# == Schema Information
#
# Table name: waivers
#
#  id                      :integer          not null, primary key
#  first_name              :string(255)
#  last_name               :string(255)
#  waiver_class            :string(255)
#  replacement_class       :string(255)
#  taken_replacement_class :string(255)
#  comments                :text
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  email                   :string(255)
#  status                  :string(255)
#  course_id               :integer
#

class Waiver < ActiveRecord::Base
  belongs_to :course
  attr_accessible :comments, :first_name, :last_name, :email, :replacement_class, :taken_replacement_class, :waiver_class, :status, :course_id
  before_save :default_values
  def default_values
    self.status ||= 'Pending'
  end
end
