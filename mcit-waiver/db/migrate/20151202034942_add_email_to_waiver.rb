class AddEmailToWaiver < ActiveRecord::Migration
  def change
    add_column :waivers, :email, :string
  end
end
