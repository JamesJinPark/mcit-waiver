class AddAdditionalDocumentationToWaivers < ActiveRecord::Migration
  def change
    add_column :waivers, :additional_documentation, :string
  end
end
