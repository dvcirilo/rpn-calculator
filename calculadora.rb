class RpnCalc
  attr_accessor :pilha

  def initialize
    @pilha = []
  end

  def push number
    @pilha.push number
  end

  def sum
    @pilha.push @pilha.pop + @pilha.pop
  end

  def sub
    temp = @pilha.pop
    @pilha.push @pilha.pop - temp 
  end

  def mul
    @pilha.push @pilha.pop * @pilha.pop
  end

  def div
    temp = @pilha.pop
    @pilha.push @pilha.pop / temp
  end

  def pow
    temp = @pilha.pop
    @pilha.push @pilha.pop**temp
  end

  def plus_minus
    @pilha.push @pilha.pop*-1
  end
end
