class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :nome, :limit => 150, null: false

      t.timestamps
    end
  end
end
