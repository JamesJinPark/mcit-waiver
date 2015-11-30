class Waiver < ActiveRecord::Base
  attr_accessible :comments, :first_name, :last_name, :replacement_class, :taken_replacement_class, :waiver_class
end
