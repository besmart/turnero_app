# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Usuario.create(
	nombre: 'Carlos',
	apellido: 'Diaz',
	estado: '1',
	agencia_id: 1,
	rol: 'Super',
	correo: 'aliadas233@gmail.com',
	password: '1234',
	password_confirmation: '1234',
	login: 'cdiaz'
)
