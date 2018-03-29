class AddTableUsuariosPlaylists < ActiveRecord::Migration[5.1]
  def change
    create_join_table :playlists, :usuarios
  end
end
