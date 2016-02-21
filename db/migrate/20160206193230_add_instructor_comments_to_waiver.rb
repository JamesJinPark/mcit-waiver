class AddInstructorCommentsToWaiver < ActiveRecord::Migration
  def change
    add_column :waivers, :instructor_comments, :string
  end
end
