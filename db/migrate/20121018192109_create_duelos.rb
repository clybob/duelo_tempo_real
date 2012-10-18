class CreateDuelos < ActiveRecord::Migration
  def change
    create_table :duelos do |t|
      t.datetime :data_inicio
      t.datetime :data_fim

      t.timestamps
    end
  end
end
