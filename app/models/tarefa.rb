class Tarefa < ApplicationRecord
  belongs_to :equilibrio
  belongs_to :triade
  belongs_to :status_tarefa
  has_many :tarefa_metas
  has_many :metas, :through => :tarefa_metas
  has_many :tarefa_papeis
  has_many :papeis, :through => :tarefa_papeis
end