class AddNombreYTipoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :tipo, :integer, default: 2, null: false #2= Cliente.
    add_column :users, :habilitado, :boolean, default: true
  end
end
