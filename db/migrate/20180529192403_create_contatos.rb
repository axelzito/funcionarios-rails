class CreateContatos < ActiveRecord::Migration[5.1]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :matricula
      t.string :nascimento
      t.string :municipio
      t.references :estado, foreign_key: true
      t.references :civil, foreign_key: true
      t.references :sexo, foreign_key: true
      t.references :job, foreign_key: true
      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
