class Waiver < ActiveRecord::Base
  has_one :waiver_class
  validates :name, presence: true
  validates :email, presence: true
  validates :waiver_class, presence: true
  validates :replacement_class, presence: true
  validates :taken_replacement_class, presence: true
  

  scope :waiver_class_cit591, -> {where(waiver_class: "CIT 591")}
  scope :waiver_class_cit592, -> {where(waiver_class: "CIT 592")}
  scope :waiver_class_cit593, -> {where(waiver_class: "CIT 593")}
  scope :waiver_class_cit594, -> {where(waiver_class: "CIT 594")}
  scope :waiver_class_cit595, -> {where(waiver_class: "CIT 595")}
  scope :waiver_class_cit596, -> {where(waiver_class: "CIT 596")}
end
