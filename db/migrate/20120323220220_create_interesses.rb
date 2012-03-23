class CreateInteresses < ActiveRecord::Migration
  def change
    create_table :interesses do |t|
      t.string :tipo
      t.references :pessoa
      t.references :livro

      t.timestamps
    end
    add_index :interesses, :pessoa_id
    add_index :interesses, :livro_id
  end
end
