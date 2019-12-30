## Writing a Ruby programme for a robotic vacuum cleaner.

### Create the file and folder structure in Atom...

(go to your projects folder)
mkdir vacuum-test  
cd vacuum-test  
atom .  
mkdir lib  
mkdir spec
rspec --init
gem install rubocop

### What each file does

#### input.txt:
the first line holds room dimensions
the second line holds the hoover position
subsequent lines contain zero or more patches of dirt (one per line)
last line contains driving instructions

#### vacuum.rb
code for running the vacuum, including creating grid, drawing out the route  
taking note of dirt patches, and returning the output in desired format

#### vacuum_spec.rb
rspec tests
