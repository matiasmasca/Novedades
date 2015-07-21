class AddReadMarkToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :read_mark, :boolean, default: false
  end
end
