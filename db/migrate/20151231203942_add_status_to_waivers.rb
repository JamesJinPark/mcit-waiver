class AddStatusToWaivers < ActiveRecord::Migration
  def change
    add_column :waivers, :status, :string
  end
end
