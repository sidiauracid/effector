class CreateEffectors < ActiveRecord::Migration[5.0]
  def change
    create_table :effectors do |t|
      t.string :name, null: false
      t.references :genre, foreign_key: true
      t.integer :point, null: false
      t.text :image1
      t.text :image2 
      t.text :text
      t.string :youtube
      t.string :link
      t.timestamps
    end
  end
end
