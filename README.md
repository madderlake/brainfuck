# brainfuck

A Ruby Brainfuck Interpreter & Generator

## Usage

```ruby
# Require it
require 'brainfuck'

# Create a interpreter instance
bf = Brainfuck.new

# Give it some code
bf.code = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'

# Or generate it

require 'generate'

bfg = Generate.new
# => "Enter a String\n"
text = `string`
gentext = bfg.generate(text)
bf.code = gentext

# Brainfuck Interpret method
bf.interpret
# => string\n"

# The output can also be found in an instance variable
bf.out

# Cursor location and the memory array
bf.cursor
bf.memory

# A pretty print of the memory
bf.dump

# Pass options
opts = {
  :code => '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.',
  :logging => true,
  :dump_all => true,
  :initial_memory => 50
}

bf2 = brainfuck.new(opts)

# The first three of these can also be set later
bf3 = brainfuck.new
bf3.code = '+++++[>++++++++++<-]>.' or generate it
bf3.logging = true
bf3.dump_all = true
```
