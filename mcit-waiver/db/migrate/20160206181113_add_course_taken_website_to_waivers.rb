class AddCourseTakenWebsiteToWaivers < ActiveRecord::Migration
  def change
    add_column :waivers, :course_taken_website, :string
  end
end
