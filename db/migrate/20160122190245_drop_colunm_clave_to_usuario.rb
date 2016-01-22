class DropColunmClaveToUsuario < ActiveRecord::Migration
  def change 
  	remove_column :usuarios, :clave, :string
  end
end
