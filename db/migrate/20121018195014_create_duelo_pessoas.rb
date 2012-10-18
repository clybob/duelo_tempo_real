class CreateDueloPessoas < ActiveRecord::Migration
  def change
    create_table :duelo_pessoas do |t|
      t.references :duelo
      t.references :pessoa
      t.integer :votos

      t.timestamps
    end
    add_index :duelo_pessoas, :duelo_id
    add_index :duelo_pessoas, :pessoa_id
  end
end
