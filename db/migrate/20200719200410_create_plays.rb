class CreatePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :plays do |t|
      t.integer :tick, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
