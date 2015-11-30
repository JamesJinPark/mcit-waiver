class CreateWaivers < ActiveRecord::Migration
  def change
    create_table :waivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :waiver_class
      t.string :replacement_class
      t.string :taken_replacement_class
      t.text :comments

      t.timestamps
    end
  end
end
