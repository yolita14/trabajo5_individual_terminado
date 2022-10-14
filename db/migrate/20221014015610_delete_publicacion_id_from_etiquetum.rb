class DeletePublicacionIdFromEtiquetum < ActiveRecord::Migration[7.0]
  def change
    change_table(:etiqueta) do |t|
      t.remove :publicacion_id
    end
  end
end
