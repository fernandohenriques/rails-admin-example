class AddColumnPerfilToUsuario < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :perfil_id, :integer
  end
end
