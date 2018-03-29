class RemovePerfilFromUsuarios < ActiveRecord::Migration[5.1]
  def change
    remove_column :usuarios, :perfil, :string
  end
end
