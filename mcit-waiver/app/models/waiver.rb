class Waiver < ActiveRecord::Base
  attr_accessible :comments, :first_name, :last_name, :email, :replacement_class, :taken_replacement_class, :waiver_class
end
