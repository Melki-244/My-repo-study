require_relative 'ui'
def pede_um_chute_valido (chutes, erros)
    cabecalho_de_tentativa chutes, erros
  loop do
    chute = pede_um_chute 
    if chutes.include? chute 
        avisa_chute_repetido chute
    else
    return chute
    end
  end
end
def joga (nome)
  palavra_secreta = escolhe_palavra_secreta
  erros = 0
  chutes = []
  pontos_ate_agora = 0
  while erros < 5
    chute = pede_um_chute_valido chutes, erros
    chutes << chute
    chute_single = chute.size == 1 
        if chute_single 
          letra_procurada = chute[0]
          total_encontrado = palavra_secreta.count  letra_procurada
          if total_encontrado == 0 
             avisa_letra_nao_encontrada
             erros += 1
          else
            avisa_letra_encontrada total_encontrado
          end
        else
      acertou = chute == palavra_secreta
       if acertou
         avisa_acerto
         pontos_ate_agora += 100
         break
       else
          pontos_ate_agora -= 30
          avisa_erro
          erros += 1 
       end
    end
  end
  avisa_pontos pontos_ate_agora
end
def jogo_da_forca
  nome = da_boas_vindas
  loop do 
   joga nome
   break if nao_quer_jogar?
  end
end


