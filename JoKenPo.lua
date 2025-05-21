--Jo-Ken_Po--

local player, computador --declaração de variaveis em lua--

print("-------------Jo-Ken-Po-------------")
print("1. Pedra")
print("2. Papel")
print("3. Tesoura")

print("Entre com a escolha do jogador: ")
player = tonumber(io.read()) -- <- io.read le a entrada de dados em lua--

while true do

    --validação de entrada
    while player ~= 0 and player ~= 1 and player ~= 2 and player ~= 3 do
        print("Escolha inválida! Digite 1, 2 ou 3 (ou 0 para sair).")
        print("Entre com a escolha do jogador: ")
        player = tonumber(io.read())
    end

    --condição de parada do loop
    if player == 0 then
        print("Jogo Encerrado!")
        break
    end

    --entrada de dados - Escolha do player
    if player == 1 then
        print("O Jogador escolheu Pedra!")
    elseif player == 2 then
        print("O Jogador escolheu Papel!")
    elseif player == 3 then
        print("O Jogador escolheu Tesoura!")
    end


    --chamada da função aleatoria para sortear um valor de 1 à 3
    math.randomseed(os.time()) --inicializa a função random com base na semente tempo 
    computador = math.random(1, 3)

    --exibição da escolha do computador
    if computador == 1 then
        print("O computador escolheu Pedra!")
    elseif computador == 2 then
        print("O computador escolheu Papel!")
    elseif computador == 3 then
        print("O computador escolheu Tesoura!")end 

    print("-----------------------------------")

    if player == computador then
        print("Empate!")
    elseif (player == 1 and computador == 3) or (player == 2 and computador == 1) or (player == 3 and computador == 2)then
        print("O Jogador Ganhou!")
    else
        print("o Computador Ganhou!")end

    print("Entre com a escolha do jogador: ")
    player = tonumber(io.read())

    print("\n-----------------------------------\n")

end
