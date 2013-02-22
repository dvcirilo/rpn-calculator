def float?(num)
  return Float(num)
rescue => e
  return false
end

a=[]
while true do
  puts "\e[H\e[2J"
  puts "======Pilha======"
  puts a[-3]
  puts a[-2]
  puts a[-1]
  puts "================="

  temp=gets.chomp
  break if temp=="sair"
  if float?(temp) then
    a.push Float(temp)
  else
    case
    when temp=="+"
      a.push a.pop+a.pop
    when temp=="-"
      a.push a.pop-a.pop
    when temp=="*"
      a.push a.pop*a.pop
    when temp=="/"
      a.push a.pop/a.pop
    else
      puts "Operador Inválido!"
    end
  end
end
