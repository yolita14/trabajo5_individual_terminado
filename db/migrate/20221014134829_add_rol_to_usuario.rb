class AddRolToUsuario < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :rol, :integer
  end
end
