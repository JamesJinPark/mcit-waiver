class AddCourseIdToWaiver < ActiveRecord::Migration
  def change
    add_column :waivers, :course_id, :integer
  end
end
