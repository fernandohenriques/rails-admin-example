class RenameTimestampToTimeUnderlineStampInLog < ActiveRecord::Migration[5.1]
  def up
    rename_column :logs, :timestamp, :time_stamp
  end

  def down
    rename_column :logs, :time_stamp, :timestamp
  end
end
