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
#  timestamp               :datetime
#  documentation           :string(255)
#  course_taken_website    :string(255)
#

require 'test_helper'

class WaiverTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
