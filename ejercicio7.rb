# Utilizando el mismo archivo del ejercicio anterior:
# La tienda desea generar un nuevo catálogo que no incluya el último precio
# correspondiente a cada producto debido a que ya no comercializa productos
# de talla XS.

# Se pide generar un método que reciba como argumento los datos del archivo
# catalogo.txt y luego imprima el nuevo catálogo solicitado en un archivo
# llamado nuevo_catalogo.txt

class Product
  def initialize(catalogo)
    @data = []
    File.open(catalogo, 'r') { |file| @data = file.readlines }
  end

  def nuevo_catalogo
    products_list = []

    @data.each do |prod|
      ls = prod.split(', ')
      print ls
      product = parsea_menos_xs(ls)
      products_list << product
    end
    print products_list
  end

  def parsea_menos_xs(parsea)
    nueva_data = []
    4.times do |dato|
      # puts dato
      nueva_data << parsea[dato]
    end
    # print nueva_data
    crear_archivo(nueva_data)
  end

  def crear_archivo(data_nueva)
    file = File.open('nuevo_catalogo.txt', 'w')

    data_nueva.each do |k|
      file.puts "#{k[0]}, #{k[1]}, #{k[2]}, #{k[3]}"
    end
    file.close

    #File.open('nuevo_catalogo.txt', 'w') { |file| @data = file.readlines }
  end

end

producto1 = Product.new('catalogo.txt')
producto1.nuevo_catalogo

# Se pide:
# Optimizar el código implementando el operador splat al momento de instanciar
# los productos
# Generar un método que permita calcular el promedio de precio por producto
