class Moneda
  attr_accessor :cantidad

  def initialize(cantidad)
    @cantidad = cantidad
  end

  def en(tipo)
    case tipo
    when :dolares
      Dolar.new(@cantidad / Dolar::TIPO_DE_CAMBIO)
    when :yens
      Yen.new(@cantidad / Yen::TIPO_DE_CAMBIO)
    when :euros
      Euro.new(@cantidad / Euro::TIPO_DE_CAMBIO)
    when :bolivares
      Bolivar.new(@cantidad / Bolivar::TIPO_DE_CAMBIO)
    when :bitcoins
      Bitcoin.new(@cantidad / Bitcoin::TIPO_DE_CAMBIO)
    else
      raise 'Tipo de moneda no soportada'
    end
  end

  def comparar(otra)
    if @cantidad < otra.cantidad
      :menor
    elsif @cantidad == otra.cantidad
      :igual
    else
      :mayor
    end
  end
end

class Dolar < Moneda
  TIPO_DE_CAMBIO = 1.0
end

class Yen < Moneda
  TIPO_DE_CAMBIO = 109.75
end

class Euro < Moneda
  TIPO_DE_CAMBIO = 0.89
end

class Bolivar < Moneda
  TIPO_DE_CAMBIO = 210000.0
end

class Bitcoin < Moneda
  TIPO_DE_CAMBIO = 0.000022
end

class Float
  def dolares
    Dolar.new(self)
  end

  def yens
    Yen.new(self)
  end

  def euros
    Euro.new(self)
  end

  def bolivares
    Bolivar.new(self)
  end

  def bitcoins
    Bitcoin.new(self)
  end
end
