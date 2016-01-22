class DropColunmLoginIdToUsuario1 < ActiveRecord::Migration
  def change
  	remove_column :usuarios, :login_id, :integer
  end
end
