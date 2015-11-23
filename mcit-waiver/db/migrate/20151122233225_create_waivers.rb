class CreateWaivers < ActiveRecord::Migration
  def change
    create_table :waivers do |t|
      t.string :name
      t.string :email
      t.string :string
      t.string :waiver_class
      t.string :replacement_class
      t.string :taken_replacement_class?
      t.text :comments

      t.timestamps null: false
    end
  end
end
