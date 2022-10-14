class CreateEtiquetaPublicacionsTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :etiqueta, :publicacions
       
  end
end
