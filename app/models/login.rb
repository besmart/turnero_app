class Login < ActiveRecord::Base
  	belongs_to :usuario
  	
	validates :estado, presence:true
	validates :sesion, presence:true
	validates :clase_usuario, presence:true



end
