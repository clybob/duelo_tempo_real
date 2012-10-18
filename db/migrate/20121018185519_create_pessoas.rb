class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :descricao
      t.string :imagem

      t.timestamps
    end
  end
end
