class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
    	t.text :nombre_usuario
    	t.text :apellido_usuario
    	t.string :telefono
    	t.string :correo
      	t.timestamps
    end
  end
end
