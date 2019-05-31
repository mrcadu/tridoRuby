class TarefaPapel < ApplicationRecord
  belongs_to :tarefa
  belongs_to :papel
end
