class AddUsuarioToPublicacions < ActiveRecord::Migration[7.0]
  def change
    add_column :publicacions , :usuario, :integer
  end
end
