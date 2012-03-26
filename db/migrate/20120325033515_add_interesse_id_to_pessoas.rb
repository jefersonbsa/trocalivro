class AddInteresseIdToPessoas < ActiveRecord::Migration
  def change
    add_column :pessoas, :interesse_id, :integer

  end
end
