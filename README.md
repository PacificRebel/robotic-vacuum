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

### So far, the unfinished code...
- constructs a grid, according to input received from the input.txt file
- sets a starting point for the hoover according to input from the input.txt
file
- moves north, south, east and west from starting point defined in input.txt
- all tests passing to that point

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

Full instructions:

You will write a program that navigates an imaginary robotic hoover  
(much like a Roomba​) through an equally imaginary room based on:  
● Room dimensions as ​X and Y coordinates​, identifying the top right  
 corner of the room rectangle. This room is divided up in a grid based   
 on these dimensions; a room that has dimensions X: 5 and Y: 5  
 has 5 columns and 5 rows, so 25 possible hoover positions. The bottom  
 left corner is the point of origin for our coordinate system, so as the  
 room contains all coordinates its bottom left corner is defined by  
 X: 0 and Y: 0.
● Locations of patches of dirt, also defined by X and Y coordinates  
identifying the bottom left corner of those grid positions.
● An initial hoover position (X and Y coordinates like patches of dirt)
● Driving instructions (as ​cardinal directions​) where e.g. N and E mean  
"go north" and "go east" respectively).  

Goal
The goal of the program is to take the room dimensions, the locations  
of the dirt patches, the hoover location and the driving instructions  
as input and to then output the following:
● The final hoover position (X, Y)
● The number of patches of dirt the robot cleaned up  
