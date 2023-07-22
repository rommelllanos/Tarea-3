class Circulo
  attr_accessor :radio
end

class Circulo
  def radio
    @radio
  end

  def radio=(value)
    @radio = value
  end
end

class Circulo
  attr_accessor :radio

  def initialize(radio)
    raise 'Radio invalido' if radio < 0
    @radio = radio
  end
end

class Circulo
  attr_accessor :radio

  def initialize(radio)
    raise 'Radio invalido' if radio < 0
    @radio = radio
  end

  def area
    Math::PI * @radio**2
  end
end
