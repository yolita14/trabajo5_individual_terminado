class CreateEtiqueta < ActiveRecord::Migration[7.0]
  def change
    create_table :etiqueta do |t|
      t.string :nombre
      t.references :publicacion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
