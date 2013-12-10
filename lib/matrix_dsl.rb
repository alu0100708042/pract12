require 'matrix.rb'
#encoding UTF-8
# Autor: 		Ricardo Oliva García, J. Oliver Martínez Novo
# Fecha: 		10/12/2013
# Descripción: 	Implementación de la clase MatrixDSL, para implementar un DSL sobre matrices.
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

end


