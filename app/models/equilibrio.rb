class Equilibrio < ApplicationRecord
	has_one :tarefa, dependent: :destroy
end
