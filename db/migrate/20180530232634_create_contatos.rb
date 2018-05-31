class CreateContatos < ActiveRecord::Migration[5.1]
  def change
    create_table :contatos do |t|
      t.references :trabalhador, foreign_key: true
      t.string :telefone
      t.string :celular
      t.string :email

      t.timestamps
    end
  end
end
