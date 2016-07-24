class MisUsuariosController < ApplicationController
	def inicio
	end

	
	def busqueda
	end
	def uno
		@nombre = params[:q]
		@usua=Usuario.where(:nombre_usuario=>@nombre)
	end
	def todos
		@usuas=Usuario.all
	end


	def nuevo 
  		@nuevo_u = Usuario.new 
	end
	def create
	  @nuevo_u = Usuario.new(parametros) 
	  if @nuevo_u.save 
	    redirect_to '/mis_usuarios' 
	  else 
	    render 'nuevo' 
	  end 
	end
	private
	 def parametros
	 	params.require(:Usuario).permit(:nombre_usuario,:apellido_usuario,:telefono,:correo) 
	 end
end
