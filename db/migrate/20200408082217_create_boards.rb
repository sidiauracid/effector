class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :text
      t.text :image
      t.timestamps
    end
  end
end
