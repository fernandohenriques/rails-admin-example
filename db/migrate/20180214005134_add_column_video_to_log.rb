class AddColumnVideoToLog < ActiveRecord::Migration[5.1]
  def change
    add_column :logs, :video_id, :integer
  end
end
