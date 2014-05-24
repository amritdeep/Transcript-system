class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :grade
      t.references :season, index: true

      t.timestamps
    end
  end
end
