# Práctica 12 - Implementación de un lenguaje de dominio especifico, (DSL) para el manejo de matrices.

## Descripción
Se implementa la clase MatrixDSL la cual hereda de Matrix.
En ella se describen métodos para la realización de operaciones aritméticas. 
Esos métodos son la suma (+), la resta (-) y la multiplicación(*).

La jerarquía de clases será la que sigue:
Matrix clase base.
MatrixDSL, clase que hereda de Matrix.
SparseMatrix, clase que hereda de Matrix.
SparseVector, clase que es usada por SparseMatrix para crear hashes.


## Instalación

Añadir esta línea a el Gemfile de la aplicación:

    gem 'MatrixDSL'

Y entonces ejecuta:

    $ bundle

O instala tu mismo la gema:

    $ gem install SparseMatrix

## Uso

Para instanciar la clase llamaremos a su constructor al cual podemos pasarle, de forma opcional, un hash.

	z = SparseMatrix.new 1000 => { 100 => 1, 500 => 200}, 20000 => { 1000 => 3, 9000 => 200}

Para comprobar su funcionamiento se podría hacer lo siguiente:

1.Devolverá el valor que tendría asociado en una matriz la fila 1000 y columna 500.
	
	puts "z[1000][500] = #{z[1000][500]}"

2.Devolverá todos los valores que tendría la columna 500 en una matriz.
	
	puts "z.col(500) = #{z.col(500)}"

## Contribucciones

1.Colaboraciones.

2.Crear una rama 

	$ git checkout -b miRama
	
3.Hacer un commit con los cambios realizados 

	$ git commit -a -m 'Mensaje descriptivo'

4.Empujar los cambios al repositorio

	$ git push -u origin miRama
	
5.Actualizar nuestro repositorio local

	$ git pull origin miRama


