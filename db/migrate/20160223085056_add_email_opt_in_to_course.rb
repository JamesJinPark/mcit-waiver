class AddEmailOptInToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :email_opt_in, :boolean
  end
end
