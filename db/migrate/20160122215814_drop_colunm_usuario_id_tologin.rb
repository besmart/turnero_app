class DropColunmUsuarioIdTologin < ActiveRecord::Migration
  def change
  	remove_column :logins, :usuario_id, :integer
  end
end
