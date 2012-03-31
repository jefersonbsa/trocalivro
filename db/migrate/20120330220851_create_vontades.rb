class CreateVontades < ActiveRecord::Migration
  def change
    create_table :vontades do |t|
      t.string :tipo
      t.references :pessoa
      t.references :livro

      t.timestamps
    end
  end
end
