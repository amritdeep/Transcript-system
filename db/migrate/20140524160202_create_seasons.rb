class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name
      t.references :course, index: true

      t.timestamps
    end
  end
end
