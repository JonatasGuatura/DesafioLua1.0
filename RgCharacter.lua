os.execute("chcp 65001")
-- Habilitador UTF-8 no terminal


--[[

**************************************************
|
|Personagem:
|Descrição:
|Dificuldade:
|
|Armas: 
|Habilidades:
|PASSIVA:
|Q:
|W: 
|E: 
|R: 
|
|Atributos:
|Dano:
|Resistência:
|Controle de Grupo:
|Mobilidade:
|Utilidade:
|
|Estilo do personagem
| Físico " " Mágico"
|
| -- Estilo do Personagem
|O estilo do personagem é dano físico ou O estilo do personagem é dano mágico
|
**************************************************

]]



--Visão geral do personagem
local character = "VI"
local description = "A DEFENSORA DE PILTOVER"
local dificulty = 1
local weapons = "🥊Manoplas de Atlas🥊"

-- Habilidades
local PassiveSkil = "BLINDAGEM"
local QSkill  = "QUEBRA-COFRES"
local WSkill = "PANCADA CERTEIRA"
local ESkill = "FORÇA IMPLACÁVEL"
local RSkill = "SAQUE E ENTERRADA"

-- Atributos
local damageAttribute = 3
local resistenceAttribute = 3
local groupControlAttribute = 4
local mobilityAttribute = 3
local utilityAttribute = 2

-- Estilo
local style = (damageAttribute + resistenceAttribute + groupControlAttribute + mobilityAttribute + utilityAttribute)/5


-- Função da barra de dificuldade
local function getDificultyBar(dificultyAtrributes)
    local fullChar = " ⬜ "
    local emptyChar = " ⬛ "

    local result = ""

    for i = 1, 3, 1 do
        if i <= dificultyAtrributes then
            result = result .. fullChar
            -- Quadradinho Cheio
        else
            result = result .. emptyChar
            -- Quadradinho Vazio
            
        end
        
    end

    return result


end


-- Função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attributes)
    local fullChar = "🔷"
    local emptyChar = "🔸"

    local result = ""

    for i = 1, 4, 1 do
        if i <= attributes then
            result = result .. fullChar
            -- Quadradinho Cheio
        else
            result = result .. emptyChar
            -- Quadradinho Vazio
            
        end
        
    end

    return result


end

-- Função do estilo
local function getStyleAttribute(StyleAttribute)
    local fullChar = "🟥"
    local emptyChar = "🟦"

    local result = ""
    
    for i = 1, 5, 1 do
        if i <= StyleAttribute then
            result = result .. fullChar
            -- Quadradinho Físico
        else
            result = result .. emptyChar
            -- Quadradinho Mágico
        end        
    end

    return result
end


-- Cartão
print("**************************************************")
print("| ")
print("| " .. character)
print("| " .. description)
print("| ")
print("| Dificuldade " .. getDificultyBar(dificulty))
print("| ")
print("| Armas: " .. weapons)
print("| ")
print("| Habilidades:")
print("|       PASSIVA: ".. PassiveSkil)
print("|             Q: " .. QSkill)
print("|             W: " .. WSkill)
print("|             E: " .. ESkill)
print("|             R: " .. RSkill)
print("| ")
print("| Atributos:")
print("|     Dano:              " .. getProgressBar(damageAttribute))
print("|     Resistência:       " .. getProgressBar(resistenceAttribute))
print("|     Controle de Grupo: " .. getProgressBar(groupControlAttribute))
print("|     Mobilidade:        " .. getProgressBar(mobilityAttribute))
print("|     Utilidade:         " .. getProgressBar(utilityAttribute))
print("| ")
print("|     Estilo do personagem")
print("|     Físico " .. getStyleAttribute(style) .. " Mágico")
--Estilo do campeão
if style >= 2.5  then
    print("|     O estilo do personagem é dano físico")
    else
    print("|     O estilo do personagem é dano mágico")
end
print("| ")
print("**************************************************")
