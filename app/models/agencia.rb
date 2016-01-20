class Agencia < ActiveRecord::Base
	has_many :usuarios
	has_many :turnos

	validates :nombre, presence: true
	validates :direccion, presence: true
end
