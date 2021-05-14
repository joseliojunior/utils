# utils.js

## *function* numberInput(	); 

## Description
​	This function makes a type text HTML input element to work similar as a type number with maximum range of digits. So you can choose if the HTML input element will be receiving a positive or a negative number, if it is an integer or a decimal number and the maximum length of digits in both integer and decimal regions of the number.

## Requirements
​	**A type text HTML input element.**

**It is important to remember that values captured by the value attribute of  a HTML input element are type string and this function wasn't design to convert any value to a type number.**

## Goals
​	The main goal here is to limit the character listening inside a type text HTML input element, because type number  HTML input element still allows some character to be typed twice like: minus, plus and zero before a decimal sign. And the 'e' character. 
​	According to some tests, that I made, type number HTML input element parses the value to a number, and some data can be misinterpreted like "-56-89e" or "--58.6", and negative numbers can possibly be converted to positive ones.
​	In order to fix that kind of issues I decide to make that function, hope you like it.

## Usage
In HTML file.
````html
<input type="text" id="number-field">
````

In JavaScript file.
````javascript
import {numberInput} from './utils.js';
const numberField = document.getElementById('number-field');

numberInput(numberField, 3);
// Input pattern: 000

numberInput(numberField, 4, 'digit');
// Input pattern: 0000 -> 0 can be typed more than once without convertion to just one "zero".

numberInput(numberField, 4, 'signed');
// Input pattern: -0000 or 0000

numberInput(numberField, 5, 'decimal');
// Input pattern: 00000.00

numberInput(numberField, 5, 'decimal', 4);
// Input pattern: 00000.0000

numberInput(numberField, 2, 'decimal|signed', 5);
// Input pattern: -00.00000 or 00.00000
````