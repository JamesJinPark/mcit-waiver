# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  has_many :courses
  has_many :waivers, through: :courses

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.upenn.edu\Z/i
  validates_presence_of :email, :password
  validates_confirmation_of :email, :password
  validates_format_of :email, :with => EMAIL_REGEX, :message =>"must be a Penn email address."
  validates_length_of :email, :maximum => 100
  validates_length_of :password, :minimum => 10
  validates_uniqueness_of :email
  validates_confirmation_of :email

end