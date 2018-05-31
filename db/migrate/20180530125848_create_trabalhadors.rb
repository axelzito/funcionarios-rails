class CreateTrabalhadors < ActiveRecord::Migration[5.1]
  def change
    create_table :trabalhadors do |t|
      t.string :nome
      t.string :matricula
      t.string :nascimento
      t.string :sexo
      t.string :civil
      t.string :cidade
      t.string :estado
      t.string :workspace
      t.string :job_role

      t.timestamps
    end
  end
end
