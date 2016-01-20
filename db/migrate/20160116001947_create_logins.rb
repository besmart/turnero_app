class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.integer :estado
      t.string :sesion
      t.integer :clase_usuario
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
