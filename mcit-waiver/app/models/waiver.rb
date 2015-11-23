class Waiver < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :waiver_class, presence: true
  validates :replacement_class, presence: true
  validates :taken_replacement_class, presence: true
end
