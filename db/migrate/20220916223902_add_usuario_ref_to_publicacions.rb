class AddUsuarioRefToPublicacions < ActiveRecord::Migration[7.0]
  def change
    add_reference :publicacions, :usuario, null: true, foreign_key: true
  end
end
