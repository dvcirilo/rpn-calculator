class RpnCalc
  def initialize
    @pilha = []
  end

  def pilha
    return @pilha
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

end

def float?(num)
  return Float(num)
rescue => e
  return false
end

calc = RpnCalc.new

while true do
  puts "\e[H\e[2J"
  puts "======Pilha======"
  puts calc.pilha[-3]
  puts calc.pilha[-2]
  puts calc.pilha[-1]
  puts "================="

  temp=gets.chomp
  break if temp=="sair"
  if float?(temp) then
    calc.push Float(temp)
  else
    case
    when temp=="+"
      calc.sum
    when temp=="-"
      calc.sub
    when temp=="*"
      calc.mul
    when temp=="/"
      calc.div
    else
      puts "Operador Inválido!"
    end
  end
end
