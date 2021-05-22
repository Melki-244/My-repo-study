def da_boas_vindas
  puts "Bem vindo ao joga da forca"
  puts "qual o seu nome"
  nome = gets.strip
  puts "começaremos o jogo para você #{nome}."
  nome
end
def escolhe_palavra_secreta
  puts "escolhendo palavra secreta ..."
  palavra_secreta = "pimba"
  puts "palavra secreta com #{palavra_secreta.size} letras escolhidas."
  palavra_secreta
end
def nao_quer_jogar?
  puts "deseja jogar novamente (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end
def cabecalho_de_tentativa(chutes, erros, mascara)
    puts "Palavra secreta: #{mascara}"
    puts "Palavra secreta:"
    puts "\n\n\n\n"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
end
def pede_um_chute(chutes, erros)
    puts "Entre com a letra ou palavra"
    chute = gets.strip
    puts "Será que acertou? Você chutou #{chute}"
    chute
end
def nao_quer_jogar?
  puts "deseja jogar novamente (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end
def pede_um_chute
  puts "entre com uma letra ou uma palavra."
  chute = gets.strip 
  puts "será que acertou você chutou #{chute}"
  chute
end

def avisa_chute_repetido (chute)
  puts "Você já Chutou #{chute}"
end
def avisa_letra_nao_encontrada
   puts "Letra não encontrada!"
end
def avisa_letra_encontrada(total_encontrado)
  puts"Letra encontrada #{total_encontrado} vezes"
end
def avisa_acerto
 puts "Parabéns! Acertou!"
end
def avisa_erro
  puts "que pena.... errou!"
end
def avisa_pontos (pontos_ate_agora)
  puts "você ganhou #{pontos_ate_agora} pontos"
end

