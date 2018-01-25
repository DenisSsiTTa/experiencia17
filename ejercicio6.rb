# Se tiene un archivo llamado catalogo.txt que contiene los nombres de los
# productos que ofrece una tienda junto con los precios de las tallas L, M,
# S y XS.

# El siguiente código define la clase Product y además realiza la lectura del
# archivo.

class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

  def valor_promedio
    prom = (@large + @medium + @small + @xsmall) / 4.0
    puts "El promedio de precios de #{@name} es #{prom}"
  end
end

products_list = []
data = []

File.open('catalogo.txt', 'r') { |file| data = file.readlines }

data.each do |prod|
  ls = prod.split(', ')
  product = Product.new(*ls)
  product.valor_promedio
  products_list << product
end

puts products_list

# Se pide:
# Optimizar el código implementando el operador splat al momento de instanciar
# los productos
# Generar un método que permita calcular el promedio de precio por producto
