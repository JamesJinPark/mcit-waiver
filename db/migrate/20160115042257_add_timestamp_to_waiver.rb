class AddTimestampToWaiver < ActiveRecord::Migration
  def change
    add_column :waivers, :timestamp, :datetime
  end
end
