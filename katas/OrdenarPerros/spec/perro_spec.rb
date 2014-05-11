require 'rspec'
require_relative '../lib/perro.rb'
require_relative '../lib/gris.rb'
require_relative '../lib/blanco.rb'
require_relative '../lib/negro.rb'
require_relative '../lib/marron.rb'

describe 'PerroTest' do 

  it'deberia poder instanciar un Perro'do
  	Perro.new()
  end

  it'deberia poder instanciar un Perro y usar sus getters (edad, peso, color)'do
  	perro = Perro.new()

  	perro.edad.should be nil
  	perro.peso.should be nil
  	perro.color.should be nil
  end

  it'deberia poder instanciar un Perro y usar sus setters (edad, peso, color)'do
  	perro = Perro.new()

  	color = 'Blanco'

  	perro.edad = 1
  	perro.peso = 1
  	perro.color = color

  	perro.edad.should be 1
  	perro.peso.should be 1
  	perro.color.should be color
  end

  it'deberia poder ordenar un array con 2 perros por edad'do
	perro1 = Perro.new
	perro1.edad = 1
	perro1.peso = 1
	perro1.color = 'perro1'

	perro2 = Perro.new
	perro2.edad = 2
	perro2.peso = 2
	perro2.color = 'perro2'

	array = [perro1, perro2]

	Perro.ordenarPorEdad(array)

	array[0].edad.should be 2
	array[0].peso.should be 2
  end

  it'deberia poder ordenar un array con 2 perros por peso'do
	perro1 = Perro.new
	perro1.edad = 1
	perro1.peso = 1
	perro1.color = 'perro1'

	perro2 = Perro.new
	perro2.edad = 2
	perro2.peso = 2
	perro2.color = 'perro2'

	array = [perro1, perro2]

	Perro.ordenarPorPeso(array)

	array[0].edad.should be 2
	array[0].peso.should be 2
  end

  it'deberia poder ordenar un array con 2 perros por color (blanco y gris)'do
	perro1 = Perro.new
	perro1.edad = 1
	perro1.peso = 1
	perro1.color = Gris.new()

	perro2 = Perro.new
	perro2.edad = 2
	perro2.peso = 2
	perro2.color = Blanco.new()

	array = [perro1, perro2]

	Perro.ordenarPorColor(array)

	array[0].edad.should be 2
	array[0].peso.should be 2
  end

  it'deberia poder ordenar un array con 2 perros por color (negro y marron)'do
	perro1 = Perro.new
	perro1.edad = 1
	perro1.peso = 1
	perro1.color = Marron.new()

	perro2 = Perro.new
	perro2.edad = 2
	perro2.peso = 2
	perro2.color = Negro.new()

	array = [perro1, perro2]

	Perro.ordenarPorColor(array)

	array[0].edad.should be 2
	array[0].peso.should be 2
  end

  it'deberia poder ordenar un array con 2 perros por todos sus parametros'do
  	perro1 = Perro.new
	perro1.edad = 1
	perro1.peso = 1
	perro1.color = Gris.new()

	perro2 = Perro.new
	perro2.edad = 2
	perro2.peso = 2
	perro2.color = Blanco.new()

	array = [perro1, perro2]

	Perro.ordenar(array)

	array[0].edad.should be 2
	array[0].peso.should be 2

	array[1].edad.should be 1
	array[1].peso.should be 1
  end

  it'debe ordenar 5 perros y mostrarlos ordenados en la consola'do
  	perro1 = Perro.new
  	perro1.edad = 10
  	perro1.peso = 10
  	perro1.color = Blanco.new()

  	perro2 = Perro.new
  	perro2.edad = 10
  	perro2.peso = 5
  	perro2.color = Negro.new()

  	perro3 = Perro.new
  	perro3.edad = 5
  	perro3.peso = 5
  	perro3.color = Marron.new()

  	perro4 = Perro.new
  	perro4.edad = 5
  	perro4.peso = 5
  	perro4.color = Gris.new()

  	perro5 = Perro.new
  	perro5.edad = 1
  	perro5.peso = 1
  	perro5.color = Blanco.new()

  	array = [perro3, perro5, perro1, perro4, perro2]

  	Perro.ordenar(array)

	array[0].edad.should be 10
	array[1].edad.should be 10
	array[1].peso.should be 5
	array[2].edad.should be 5
	array[3].edad.should be 5
	array[3].peso.should be 5
	array[4].edad.should be 1

  	puts'---------------'
  	puts array[0].edad
  	puts array[0].peso
  	puts array[0].color.toString
  	puts'---------------'
  	puts array[1].edad
  	puts array[1].peso
  	puts array[1].color.toString
  	puts'---------------'
  	puts array[2].edad
  	puts array[2].peso
  	puts array[2].color.toString
  	puts'---------------'
  	puts array[3].edad
  	puts array[3].peso
  	puts array[3].color.toString
  	puts'---------------'
  	puts array[4].edad
  	puts array[4].peso
  	puts array[4].color.toString
  	puts'---------------'
  end

end