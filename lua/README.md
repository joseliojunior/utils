# string-functions.lua

## Usage

It is a requirement that you have `Lua` installed in your machine.
Download the `string-functions.lua`, put it inside the folder that you going to work and require it from your project file in `Lua`.

````lua
--- My-file.lua
local sf = require('string-functions')

--- Current methods
sf.split(string, string?) --> table
sf.xascii(string) --> string
````



## *function* xascii(	); 

## Description
​	This function extends the ASCII printable characters from char 128 to char 255.  That means this function will convert all those chars listed below into a valid printable form.

`Ç` `ü` `é` `â` `ä` `à` `å` `ç` `ê` `ë` `è` `ï` `î` `ì` `Ä` `Å` `É` `æ` `Æ` `ô` `ö` `ò` `û` `ù` `ÿ` `Ö` `Ü` `ø` `£` `Ø` `×` `ƒ` `á` `í` `ó` `ú` `ñ` `Ñ` `ª` `º` `¿` `®` `¬` `½` `¼` `¡` `«` `»` `░` `▒` `▓` `│` `┤` `Á` `Â` `À` `©` `╣` `║` `╗` `╝` `¢` `¥` `┐` `└` `┴` `┬` `├` `─` `┼` `ã` `Ã` `╚` `╔` `╩` `╦` `╠` `═` `╬` `¤` `ð` `Ð` `Ê` `Ë` `È` `ı` `Í` `Î` `Ï` `┘` `┌` `█` `▄` `¦` `Ì` `▀` `Ó` `ß` `Ô` `Ò` `õ` `Õ` `µ` `þ` `Þ` `Ú` `Û` `Ù` `ý` `Ý` `¯` `´` `­` `±` `‗` `¾` `¶` `§` `÷` `¸` `°` `¨` `·` `¹` `³` `²` `■`

## Usage

````lua
local sf = require('string-functions')
local str = 'A maçã que estava na árvore caíra no chão.'
print(str)             -- A ma├º├ú que estava na ├írvore ca├¡ra no ch├úo.
print(sf.xascii(str))  -- A maçã que estava na árvore caíra no chão. 
````



## *function* split(	); 

## Description

​	This function split a string into substrings using the specified separator and return them as a table.
​	If the separator is not defined returns the string splitted by the characters.

## Usage

````lua
local sf = require('string-functions')
local str = sf.split('alfa/beta/omega/zeta', '/')

print(table.unpack(str))  -- alfa beta omega zeta
````