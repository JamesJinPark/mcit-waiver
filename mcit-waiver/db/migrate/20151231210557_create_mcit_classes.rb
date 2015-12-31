class CreateMcitClasses < ActiveRecord::Migration
  def change
    create_table :mcit_classes do |t|
      t.string :waiver_class

      t.timestamps
    end
  end
end
