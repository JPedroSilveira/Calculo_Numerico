function E = erro(erro_original,intervalo,intervalo_novo,modo) // modo = 3 se for trapezio, se for Simpson = 4. Geralmente ele nomeia os intervalos como h nas questões
    proporcao = intervalo_novo ^ (modo-1) / intervalo ^ (modo-1) // SE ELE DER O TAMANHO DO INTERVALO, TALVEZ MUDAR PRA MODO = MODO EM VEZ DE MODO = MODO -1 
    E = erro_original * proporcao
endfunction
// OBS: intervalo NÃO É O NÚMERO de intervalos. Se ele der um número, ex: 30 e 90. Substitua por qualquer coisa que mantenha a proporção, como 3 (30) e 1 (90)

// pra rodar, ex (erro de trapézio)
// erro(10,0.1,0.001,3)
