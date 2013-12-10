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

        attr_reader :matrizA, :matrizB

end


