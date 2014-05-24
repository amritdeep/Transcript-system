class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.float :gpa

      t.timestamps
    end
  end
end
