def boas_vindas
  "Bem Vindo ao Jogo da Adivinhação"
  puts "Qual é o seu nome"
  nome = gets 
  puts "\n\n\n"
  puts "Começaremos o jogo para você, #{nome} "
end
def pede_dificuldade
  puts "qual o nível de difículdade?"
  dificuldade = gets.to_i
end
def sorteia_numero_secreto dificuldade
  case dificuldade
  when 1
   maximo = 30
  when 2 
   maximo = 60
  when 3
   maximo = 120 
  when 4 
    maximo = 150
  else
    maximo = 200
  end

  puts "Escolhendo um número secreto entre 1 e #{maximo}..."
  numero_sorteado = rand(maximo) +1 
  puts "Número escolhido. Que tal adivinhar"
  numero_sorteado
end
def pede_numero chutes,tentativa,numero_de_tentativas
   puts "\n\n\n"
   puts "tentativa #{tentativa} de #{numero_de_tentativas}"
   puts "chutes até agora #{chutes}"
   puts "entre com o número"
   chute = gets
   puts "será que acertou? você chutou #{chute}"
   chute.to_i
end
def verificacao_de_tentativa numero_secreto,chute
  acertou = numero_secreto  == chute

   if acertou
      puts "Parabéns você acertou!"
      return true
   end
   maior = numero_secreto > chute
   if maior
      puts "você errou o numéro é maior"
   else
      puts "você errou o numéro é menor"
   end
   false
end
def jogo dificuldade
  numero_secreto = sorteia_numero_secreto dificuldade
  pontuacao = 1000
  numero_de_tentativas = 5
  chutes = []
  total_de_chutes = 0
  for tentativa in 1..numero_de_tentativas
      chute = pede_numero chutes,tentativa,numero_de_tentativas
      chutes << chute 
      pontuacao_a_perder =  (chute - numero_secreto).abs / 2.0
      pontuacao -= pontuacao_a_perder

      if verificacao_de_tentativa numero_secreto, chute
      break
      end
   end
puts "você ganhou #{pontuacao}"
puts "o Numéro secreto era #{numero_secreto}"
end
def quer_jogar?
puts "deseja jogar novamente ? (S/N)"
quero_jogar = gets.strip
nao_quero_jogar = quero_jogar.upcase == "N"
end

boas_vindas
dificuldade = pede_dificuldade


while true
  jogo dificuldade
  if quer_jogar?
    break
  end
end


