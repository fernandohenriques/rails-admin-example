class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nome, :limit => 150, null: false
      t.string :perfil, :limit => 20, null: false
      t.string :email, :limit => 250, null: false

      t.timestamps
    end
  end
end
