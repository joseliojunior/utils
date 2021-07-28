---@author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
---@copyright Josélio de S. C. Júnior 2021

---Converts a string with extended ASCII characters into a printable version of itself.
---@param str string The string to be converted.
---@return string
function xASCII(str)
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