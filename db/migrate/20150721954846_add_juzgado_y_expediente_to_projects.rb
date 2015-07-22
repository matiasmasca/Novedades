class AddJuzgadoYExpedienteToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :judicial_record_number, :string, default: "EXP.N° ", index: true
    add_column :projects, :court, :integer, default: 0, index: true
  end
end
