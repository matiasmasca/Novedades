class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.references :project, index: true, foreign_key: true
      t.string :title
      t.date :date
      t.text :message

      t.timestamps null: false
    end
  end
end
