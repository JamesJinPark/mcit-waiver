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
#

class Waiver < ActiveRecord::Base
  attr_accessible :comments, :first_name, :last_name, :email, :replacement_class, :taken_replacement_class, :waiver_class
end
