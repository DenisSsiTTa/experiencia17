# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con
# la siguiente estructura:

# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash.
# Luego generar un método llamado ladrar que, mediante interpolación, imprima
# "Beethoven está ladrando!"

class Perro
  attr_reader :perro
  def initialize(propiedades)
    @perro = propiedades
  end
end

propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }

perro_uno = Perro.new(propiedades)
puts "#{perro_uno.perro[:nombre]} está ladrando"
