class AddColunm1ToUsuarios < ActiveRecord::Migration
  def change
    add_reference :usuarios, :login, index: true, foreign_key: true
  end
end
