#Creacion de una matriz
class Matriz
  attr_reader :filas, :columnas, :matriz
  
  include Comparable
include Enumerable
  
  def initialize (m)
    @filas = m.size #3
    @columnas = m[1].size #3
    @matriz = m #matriz completa
    
  end
  
  
#sobrecarga de operadores 
    i = 0
    aux = @matriz
    while i < @filas
      j = 0
      while j < @columnas
        aux[i][j] = aux[i][j] + other.matriz[i][j]
        j = j + 1
      end
      i = i + 1
    end
    Matriz.new(aux)
  end
  
  
   def -(other)
    i = 0
    aux = @matriz
    while i < @filas
      j = 0
      while j < @columnas
        aux[i][j] = aux[i][j] - other.matriz[i][j]
        j = j + 1
      end
      i = i + 1
    end
    Matriz.new(aux)
  end
 
end
