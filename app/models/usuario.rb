class Usuario < ActiveRecord::Base
	has_many : logins
  	has_many : turnos
  
  	belongs_to :agencia

  	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :correo, presence:true, uniqueness:true, format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :login, presence:true, uniqueness: true
	validates :estado, presence:true
	validates :clave, presence:true
	validates :rol, presence:true

	has_secure_password

	after_update :updated_email
	after_create :created_email

	def created_email
		UserMailer.created(id).deliver
	end

    def updated_email
        UserMailer.updated(id).deliver
    end

	def self.authenticate(email = '', clave = '')
  		user = find_by('correo = :correo or login = :correo', correo: email)
 	end

end
