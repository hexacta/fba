class AddDetailsDonante < ActiveRecord::Migration
  def change
    add_column :donantes , :nombre_contacto, :string
    add_column :donantes , :telefono, :string
    add_column :donantes,  :email, :string
  end

end
