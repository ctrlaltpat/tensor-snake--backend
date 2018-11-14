class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :left
      t.string :right
      t.string :up
      t.string :down
      t.string :avatar

      t.timestamps
    end
  end
end
