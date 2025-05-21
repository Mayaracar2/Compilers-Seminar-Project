--Table-hashing--
--Uma table em lua pode ser usada basicamente como um array, um hash, uma lista pulha ou fila
--Neste caso usaremos a table para implementar um hashing 

local function hash_table(key, size)
    local h = 0
    h = key % size

    if h < 0 then
        h = h + size
    end
    return h;
end

local k, m

    k = tonumber(io.read())
    m = tonumber(io.read())

while k ~= 0 and m ~= 0 do
    local h = hash_table(k, m)
    print(h)

    k = tonumber(io.read())
    m = tonumber(io.read())
end
