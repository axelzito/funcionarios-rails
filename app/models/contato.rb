class Contato < ApplicationRecord
  belongs_to :estado
  belongs_to :civil
  belongs_to :sexo
  belongs_to :job
  belongs_to :workspace
end
