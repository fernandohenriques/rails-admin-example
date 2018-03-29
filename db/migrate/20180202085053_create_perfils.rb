class CreatePerfils < ActiveRecord::Migration[5.1]
  def change
    create_table :perfils do |t|
      t.string :nome, :limit => 20, null: false

      t.timestamps
    end
  end
end
