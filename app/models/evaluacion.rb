class Evaluacion < ActiveRecord::Base
    belongs_to :turno

  	validates :pregunta1, presence: true
	validates :resultado1, presence: true
  	validates :pregunta2, presence: true
	validates :resultado2, presence: true
  	validates :pregunta3, presence: true
	validates :resultado3, presence: true
  	validates :pregunta4, presence: true
	validates :resultado4, presence: true
  	validates :comentario, presence: true
	validates :resultado_total, presence: true
	

end
