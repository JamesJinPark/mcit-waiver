class AddDocumentationToWaivers < ActiveRecord::Migration
  def change
    add_column :waivers, :documentation, :string
  end
end
