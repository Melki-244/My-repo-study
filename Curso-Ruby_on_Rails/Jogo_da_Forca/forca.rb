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
def pede_um_chute (erros,chutes)
  puts "\n\n\n" 
  puts "erros até agora: #{erros}"
  puts "chutes até agora: #{chutes}"
  puts "entre com uma letra ou uma palavra."
  chute = gets.strip 
  puts "será que acertou você chutou #{chute}"
  chute
end
def joga (nome)
  palavra_secreta = escolhe_palavra_secreta
  erros = 0
  chutes = []
  pontos_ate_agora = 0
  while erros < 5
    chute = pede_um_chute erros,chutes
    chutes << chute
    chute_single = chute.size == 1 
        if chute_single 
          letra_procurada = chute[0]
          total_encontrado = palavra_secreta.count  letra_procurada
          if total_encontrado == 0 
            puts " Letra Não encontrada."
            erros += 1 
          else
            puts "Letra Encontrada #{total_encontrado} vezes."
          end
        else
      acertou = chute == palavra_secreta
      if acertou
         puts "Parabéns Você acertou!"
         pontos_ate_agora += 100
         break
       else
          puts "Que pena... Você Errou"
          pontos_ate_agora -= 30
          erros += 1 
       end
    end
  end
  puts "você ganhou #{pontos_ate_agora} pontos."
end
nome = da_boas_vindas
loop do 
  joga nome
  if nao_quer_jogar?
    break
  end
end
pimba do burro


