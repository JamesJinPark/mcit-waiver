# == Schema Information
#
# Table name: waivers
#
#  id                       :integer          not null, primary key
#  first_name               :string(255)
#  last_name                :string(255)
#  waiver_class             :string(255)
#  replacement_class        :string(255)
#  taken_replacement_class  :string(255)
#  comments                 :text
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  email                    :string(255)
#  status                   :string(255)
#  course_id                :integer
#  timestamp                :datetime
#  documentation            :string(255)
#  course_taken_website     :string(255)
#  instructor_comments      :string(255)
#  transcript               :string(255)
#  additional_documentation :string(255)
#

class Waiver < ActiveRecord::Base
  belongs_to :course
  attr_accessible :comments, :first_name, :last_name, :email, :replacement_class, :taken_replacement_class, :waiver_class, :status, :course_id, :course, :documentation, :additional_documentation, :transcript, :course_taken_website, :instructor_comments
  mount_uploader :documentation, DocumentationUploader
  mount_uploader :transcript, TranscriptUploader
  mount_uploader :additional_documentation, AdditionalDocumentationUploader
  
  before_save :default_values
  def default_values
    self.status ||= 'Pending'
  end

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.upenn.edu\Z/i

  validates_presence_of :first_name, :last_name, :email, :replacement_class, :taken_replacement_class, :course_id
  validates_uniqueness_of :email
  validates_length_of :first_name, :maximum => 50
  validates_length_of :last_name, :maximum => 50
  validates_length_of :email, :maximum => 100
  validates_length_of :replacement_class, :maximum => 255
  validates_length_of :comments, :maximum => 2000
  validates_format_of :email, :with => EMAIL_REGEX, :message =>"must be a Penn email address."
  validates_confirmation_of :email

#  searchable do
 #   text :comments, :instructor_comments, :first_name, :last_name, :email, :replacement_class, :taken_replacement_class, :waiver_class, :status, :course
  #end
end
