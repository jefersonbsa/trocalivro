class Interesse < ActiveRecord::Base
  belongs_to :pessoa
  has_many:livro
end
