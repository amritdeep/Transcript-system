class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name, default: ["Winter", "Fall", "Spring"]
      t.references :course, index: true

      t.timestamps
    end
  end
end
