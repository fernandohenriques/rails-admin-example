class AddColumnDuracaoToLog < ActiveRecord::Migration[5.1]
  def up
    add_column :logs, :duracao, :integer
  end
end
