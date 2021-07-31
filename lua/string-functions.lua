---@author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
---@copyright Josélio de S. C. Júnior 2021

local StringFunctions = {}

---Formats a string with extended ASCII characters into a printable version of itself.
---@param str string The string to be formatted.
---@return string
function StringFunctions.xascii (str)
    local s = type(str) == 'string' and str or ''
    local x = {'Ç','ü','é','â','ä','à','å','ç','ê','ë','è','ï','î','ì','Ä','Å',
    'É','æ','Æ','ô','ö','ò','û','ù','ÿ','Ö','Ü','ø','£','Ø','×','ƒ','á','í','ó',
    'ú','ñ','Ñ','ª','º','¿','®','¬','½','¼','¡','«','»','░','▒','▓','│','┤','Á',
    'Â','À','©','╣','║','╗','╝','¢','¥','┐','└','┴','┬','├','─','┼','ã','Ã','╚',
    '╔','╩','╦','╠','═','╬','¤','ð','Ð','Ê','Ë','È','ı','Í','Î','Ï','┘','┌','█',
    '▄','¦','Ì','▀','Ó','ß','Ô','Ò','õ','Õ','µ','þ','Þ','Ú','Û','Ù','ý','Ý','¯',
    '´','­','±','‗','¾','¶','§','÷','¸','°','¨','·','¹','³','²','■'}
    for i = 1, 127, 1 do s = string.gsub(s, x[i], string.char(127 + i)) end
    return s
end

---Split a string into substrings using the specified separator and return them as a table.
---@param str string The string to be splitted.
---@param separator string|nil A string that identifies character or characters to use in separating the string. If omitted, a table containing all characters of the string is returned.
---@return table
function StringFunctions.split(str, separator)
    local t = {}
    local s = type(str) == 'string' and StringFunctions.xascii(str) or ''
    local p
    if separator == '' or not separator then
        local u = {}
        for i = 1, 127, 1 do table.insert(u, string.char(127 + i)) end
        p = '[%w%s%p'..table.concat(u)..']'
    else
        p = ('[^'..separator..']+')
    end
    for s in string.gmatch(s, p) do table.insert(t, s) end
    return t
end

return StringFunctions