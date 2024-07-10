class CreateLivros < ActiveRecord::Migration[6.0]
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.float :preco
      t.integer :ativo
      t.datetime :data

      t.timestamps
    end
  end
end
