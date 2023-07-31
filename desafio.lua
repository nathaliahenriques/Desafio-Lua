--[[
Nome da criatura
Descrição
Som que faz
Atributos:
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligencia
    Habilidades
    Furtividade
    Explosão
====================================================
/
/ CREEPER 
/ Um monstro muito sagaz que explode na sua cara.
/
/ Som: Tsssssss
/
/ Atributos:
/  Ataque: ########00
/  Defesa: ###0000000
/
/
/
====================================================
]]

--Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "Pikachu"
local description = "Movimentos rápidos como um interruptor volt e carregados como um capacitor"
local emoji = "⚡"
local sound = "Pika-chu"
local favoriteTime = "Noite"
local power = "Choque do trovão"

-- Atributos
local attackAttribute = 7
local defenseAttribute = 6
local lifeAttribute = 8
local speedAttribute = 10
local inteligenceAttribute = 8

-- função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "💚"
    local emptyChar = "🤍"
    
    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result

end

-- Cartão
print("=============================================================================")
print("| ")
print("|  ⚡" .. monsterName .. "⚡")
print("| ")
print("| " .. description)
print("| ")
print("|    Habilidade:       " .. power)
print("|    Som:              " .. sound)
print("|    Emoji Favorito:   " .. emoji)
print("|    Horário Favorito: " .. favoriteTime)
print("| ")
print("| ")
print("| Atributos:")
print("|    Ataque:        " .. getProgressBar(attackAttribute))
print("|    Defesa:        " .. getProgressBar(defenseAttribute))
print("|    Vida:          " .. getProgressBar(lifeAttribute))
print("|    Velocidade:    " .. getProgressBar(speedAttribute))
print("|    Inteligência:  " .. getProgressBar(inteligenceAttribute))
print("| ")
print("=============================================================================")