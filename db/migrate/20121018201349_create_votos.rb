class CreateVotos < ActiveRecord::Migration
  def change
    create_table :votos do |t|
      t.references :duelo_pessoa
      t.integer :qtd_voto
      t.datetime :data_consolidacao

      t.timestamps
    end
    add_index :votos, :duelo_pessoa_id
  end
end
