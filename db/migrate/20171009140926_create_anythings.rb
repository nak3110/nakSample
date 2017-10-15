class CreateAnythings < ActiveRecord::Migration[5.1]
  def change
    create_table :anythings do |t|
      t.string :title
      t.string :col1
      t.string :col2
      t.string :col3
      t.string :col4
      t.timestamps
    end
  end
end
