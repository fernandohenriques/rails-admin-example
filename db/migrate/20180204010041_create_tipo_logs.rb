class CreateTipoLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_logs do |t|
      t.string :nome, :limit => 50, null: false

      t.timestamps
    end
  end
end
