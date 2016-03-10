class AddTranscriptToWaivers < ActiveRecord::Migration
  def change
    add_column :waivers, :transcript, :string
  end
end
