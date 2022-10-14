class RemoveUsuarioFromPublicacions < ActiveRecord::Migration[7.0]
  def change
    remove_column :publicacions, :usuario, :integer
  end
end
