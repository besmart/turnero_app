require 'csv'
class Evaluacion < ActiveRecord::Base
    include Export

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
	
	def puntaje_total
		resultado_total = (resultado1 + resultado2 + resultado3 + resultado4) / 4
	end

	def self.methods_to_export
		super + ['puntaje_total']
	end
end
