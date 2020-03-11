require_relative 'generate.rb'
require_relative 'brainfuck.rb'

bfg = Generate.new
puts "Please enter a string"
text = gets.chop
puts bfg.generate(text);
gentext = bfg.generate(text)

bf = Brainfuck.new

bf.code = gentext
#bf.logging = true
puts 'I think this is your string:'
bf.interpret
puts
