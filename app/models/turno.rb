class Turno < ActiveRecord::Base
  	has_many :evaluaciones
  
  	belongs_to :usuario
  	belongs_to :agencia
	validates :nombre, presence:true
	validates :resumen, presence:true
	validates :descripcion, presence:true
	validates :hora_ingreso, presence:true
	validates :hora_atencion, presence:true
	validates :hora_finalizacion, presence:true
	validates :comentario_atencion, presence:true
	validates :estado, presence:true



end
