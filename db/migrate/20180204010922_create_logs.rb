class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.integer :usuario_id, null: false
      t.timestamp :timestamp, null: false
      t.integer :tipo_log_id, null: false

      t.timestamps
    end
  end
end
