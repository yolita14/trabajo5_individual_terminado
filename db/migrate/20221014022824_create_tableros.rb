class CreateTableros < ActiveRecord::Migration[7.0]
  def change
    create_table :tableros do |t|
      t.date :fecha
      t.references :publicacion, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
