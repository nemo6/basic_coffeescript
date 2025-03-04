"civet autoLet"

fs = require "fs"
_  = require "C:/Users/Miguel/AppData/Roaming/npm/node_modules/lodash"
colors = require "C:/Users/Miguel/AppData/Roaming/npm/node_modules/colors"

{ upperFirst, trim, split, parseInt } = _

{ min,max } = Math

m = fs.readFileSync( "a.txt","utf8" )
.split("\n")
.map parseInt
.map typeof &
.map & + " ..."

console.log m

n = 6
ceiling = n+1
floor = 3

v = 0
|> (x) => min( n , ceiling )
|> (x) => max( x , floor )

console.log `test: ${v}`

value = " A5 "

value
|> upperFirst
|> trim
|> &.split("")
|> console.log

console.log `\njustDoIt: ${justDoIt(1,2)}\n`

function justDoIt(a,b) {
	a+b
}

evenSquares =
	for item of [1..10]
		continue unless item % 2 == 0
		item * item

console.log evenSquares

content = "hello"

demo = [ { type: "text", content }, 1,2,3,4 ]

switch demo
  0
    console.log("zero")
  /^\s+$/
    console.log("whitespace")
  [{type: "text", content }, ...rest]
    console.log( "pattern matching: ", rest )
  default
    console.log "...".red
