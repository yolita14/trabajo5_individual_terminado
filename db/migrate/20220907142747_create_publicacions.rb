class CreatePublicacions < ActiveRecord::Migration[7.0]
  def change
    create_table :publicacions do |t|
      t.string :titulo

      t.timestamps
    end
  end
end
