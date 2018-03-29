class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :nome, :limit => 150, null: false
      t.string :url,  :limit => 255, null: false

      t.timestamps
    end
  end
end
