# stringFunctions.lua

## *function* xASCII(	); 

## Description
​	This function extends the ASCII printable characters from char 128 to char 255.  That means this function will convert all those chars listed below into a valid printable form.

`Ç` `ü` `é` `â` `ä` `à` `å` `ç` `ê` `ë` `è` `ï` `î` `ì` `Ä` `Å` `É` `æ` `Æ` `ô` `ö` `ò` `û` `ù` `ÿ` `Ö` `Ü` `ø` `£` `Ø` `×` `ƒ` `á` `í` `ó` `ú` `ñ` `Ñ` `ª` `º` `¿` `®` `¬` `½` `¼` `¡` `«` `»` `░` `▒` `▓` `│` `┤` `Á` `Â` `À` `©` `╣` `║` `╗` `╝` `¢` `¥` `┐` `└` `┴` `┬` `├` `─` `┼` `ã` `Ã` `╚` `╔` `╩` `╦` `╠` `═` `╬` `¤` `ð` `Ð` `Ê` `Ë` `È` `ı` `Í` `Î` `Ï` `┘` `┌` `█` `▄` `¦` `Ì` `▀` `Ó` `ß` `Ô` `Ò` `õ` `Õ` `µ` `þ` `Þ` `Ú` `Û` `Ù` `ý` `Ý` `¯` `´` `­` `±` `‗` `¾` `¶` `§` `÷` `¸` `°` `¨` `·` `¹` `³` `²` `■`

## Usage

````lua
local str = 'A maçã que estava na árvore caíra no chão.'
print(str)          -- A ma├º├ú que estava na ├írvore ca├¡ra no ch├úo.
print(xASCII(str))  -- A maçã que estava na árvore caíra no chão. 
````
