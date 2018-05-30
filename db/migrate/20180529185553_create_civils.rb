class CreateCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :civils do |t|
      t.string :civil

      t.timestamps
    end
  end
end
