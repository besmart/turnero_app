class AddColunmLoginIdToUsuario < ActiveRecord::Migration
  def change
  	add_column :usuarios, :login_id, :integer
  end
end
