# encoding UTF-8
# Autor: 		Ricardo Oliva García, J. Oliver Martínez Novo
# Fecha: 		10/12/2013
# Descripción: 	Implementación de la clase MatrixDSL, para representar un DSL sobre matrices.

require 'matrix.rb'

class MatrixDSL < Matrix
	
	# Al initialize se le pasa el tipo de operación que se desea realizar
	def initialize(operation)

		@operacion = operacion.to_s
			
		# El case asignara el operando
		case @operandoeracion       

			when "suma"
				@operando= "+"                
			when "resta"
				@operando = "-"
			when "multiplica"
				@operando = "*"             
		end
		
		# se inicializan dos matrices que son las que realizarán la operación a nil                           
		@matrixA = nil
		@matrixB = nil

	end

	# en option se dirá si son dispersas o densas
	def option(opcion)
	
		@tipoMatrix = opcion  
		
	end

	# Se define operand que contendra cara uno de los operandos de la matriz
	def operand(other)
	
		if(@matrixA == nil)
			@matrixA = other
		else
			@matrixB = other
		end			 
		execute
		
	end
		
	# Definimos la función de ejecución del DSL
	def execute
			
		# Mostramos las matrices
		if @matrixA != nil and @matrixB != nil

			@matrizA = "Matrix" + @tipoMatrix.to_s + ".new(@matrixA)"
			puts "Matriz A: #{@matrixA}"

			@matrizB = "Matrix" + @tipoMatrix.to_s + ".new(@matrixB)"
			puts "Matriz B: #{@matrixB}"

			resultado = @matrizA.to_s + "." + @operando.to_s + "(" + " " + @matrizB.to_s + ")"
			resultado = eval(resultado)
			puts "Resultado de la operacion ( " + @operacion.to_s + " ): #{resultado}"

		end
			
	end

end


