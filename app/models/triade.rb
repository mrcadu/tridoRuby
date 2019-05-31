class Triade < ApplicationRecord
	has_one :tarefa, dependent: :destroy
end
