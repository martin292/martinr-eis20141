class Perro
  attr_accessor :edad, :peso, :color

  def self.ordenarPorEdad(perros)
  	perros.sort!{|a,b| b.edad <=> a.edad}
  end

  def self.ordenarPorPeso(perros)
  	perros.sort!{|a,b| b.peso <=> a.peso}
  end

  def self.ordenarPorColor(perros)
  	perros.sort!{|a,b| b.color.valor <=> a.color.valor}
  end

  def self.ordenar(perros)
  	perros.sort!{|a,b| [b.edad, b.peso, b.color.valor] <=> [a.edad, a.peso, a.color.valor]}
  end

end