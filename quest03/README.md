Instructions for Quest03

Quest03
Remember to git add && git commit && git push each exercises!
We will execute your function with our test, please DO NOT PROVIDE ANY TEST in your file
Exercise ex00
rostring
• Submit directory: ex00/
• Submit file: rostring.rb
Write a function that takes a string and return this string after rotating it one word to the left.
Thus, the first word becomes the last, and others stay in the same order.
A word is a section of string delimited by spaces/tabs or the start/end of the string. If a word has a
single letter, it must be capitalized.
A letter is a character in the set [a-zA-Z]
def rostring(string);
Google Ruby Array Split
Example 00:
Input: "abc "
Output: "abc"
Example 01:
Input: "Que la lumiere soit et la lumiere fut"
Output: "la lumiere soit et la lumiere fut Que"
Example 02:
Input " AkjhZ zLKIJz , 23y"
Output: "zLKIJz , 23y AkjhZ"
Example 03:
Input ""
Output: ""
Exercise ex01
my_is_sort
• Submit directory: ex01/
• Submit file: my_is_sort.rb
Write a function that takes an integer array as parameter and return a boolean (true/false).
Your function will return true if the integer array is sorted (ASC or DESC). Your function will
return false if the integer array is not sorted.
Numbers will be from -2_000_000 to 2_000_000 Array might have duplicate(s).
def my_is_sort(array);
Example 00:
Input: [1, 1, 2]
Output: true
Example 01:
Input: [2, 1, -1]
Output: true
Example 02:
Input: [4, 7, 0, 3]
Output: false
Example 03:
Input: []
Output: true
Exercise ex02
my_sort
• Submit directory: ex02/
• Submit file: my_sort.rb
Write a function that takes two parameters: an integer array and a symbol order and return this array
sorted (in place).
Order can only take two values: :asc OR :desc
If order is :asc, you will order array in ascending order. If order is :desc, you will order array in
descending order.
Numbers will be from -2_000_000 to 2_000_000 Array might have duplicate(s).
Google Ruby Symbol (for the ':' before asc or desc)
def my_sort(array, order);
Example 00:
Input: [1, 2, 1] && :asc
Output: [1, 1, 2]
Example 01:
Input: [2, 1, -1] && :asc
Output: [-1, 1, 2]
Example 02:
Input: [2, 1, -1] && :desc
Output: [2, 1, -1]
Example 03:
Input: [1, 7, 9, 2, -1] && :blahblah
Output: [1, 7, 9, 2, -1]
Exercise ex03
my_split
• Submit directory: ex03/
• Submit file: my_split.rb
Create a function that splits a string of character depending on a string of characters.
You'll have to use each character from the string charset as a separator.
The function returns an array where contains a string wrapped between two separators.
There cannot be any empty strings in your array.
The string given as argument won't be modifiable.
It should be prototyped:
def my_split(string, charset);
Example 00:
Input: "abc def gh\t!" && "\t"
Output: ["abc def gh", "!"]
Example 01:
Input: "abc def gh\t!" && " \t"
Output: ["abc", "def", "gh", "!"]
Example 02:
Input: "abc def gh\t!" && "def "
Output: ["abc", "d", "e", "f", "gh\t!"]
Example 03:
Input: "" && " "
Output: []
Exercise ex04
my_join
• Submit directory: ex04/
• Submit file: my_join.rb
Create a function that splits a string of character depending on a string of characters.
You will receive two parameters, an array with all the string and a separator.
The function returns a string where all the string from array are joined with the separator.
It should be prototyped:
def my_join(array, separator);
Example 00:
Input: ["abc", "def", "gh", "!"] && "\t"
Output: ["abc\tdef\tgh\t!"]
Example 01:
Input: ["abc", "def", "gh", "!"] && "blah"
Output: ["abcblahdefblahghblah!"]
Example 02:
Input: ["abc", "def", "gh", "!"] && ""
Output: ["abcdefgh!"]
Example 03:
Input: [] && " "
Output: ""
Exercise ex05
college_course_average
• Submit directory: ex05/
• Submit file: college_course_average.rb
Write a function which take a hash with all marks for a test and returns average mark for this test.
Google Ruby Hash
It should be prototyped:
def class_average(class_results)
Example 00:
Input: {
"John" => 7,
"Margot" => 8,
"Jules" => 4,
"Marco" => 19
}
Output: 9.5
Example 01:
Input: {
"Quentin" => 1,
"Fred" => 1,
"Julia" => 18,
"stephanie" => 13
}
Output: 8.25
Example 02:
Input: {}
Output: 0.0
Exercise ex06
my_robot_simulator
• Submit directory: ex06/
• Submit file: my_robot_simulator.rb
++ Robot Simulator
Write a robot simulator.
++ Robot instructions:
The robot factory manufactures robots that have three possible movements:
• turn right
• turn left
• advance
Robots are placed on a hypothetical infinite grid, facing a particular direction (north, east, south, or
west) at a set of {x,y} coordinates, e.g., {3,8}.
Robots can pivot left and right.
The robot factory manufactures robots that have three possible movements:
• turn right
• turn left
• advance
The factory's test facility needs a program to verify robot movements.
The floor of the room is a grid, each square of which measures 1 square RU (Robot Unit).
The rooms are always oriented so that each wall faces east, south, west, and north.
The test algorithm is to place a robot at a coordinate in the room, facing in a particular direction.
The robot then receives a number of instructions, at which point the testing facility verifies the robot's
new position, and in which direction it is pointing.
The robot factory's test facility has a simulator which can take a string of letters and feed this into a
robot as instructions.
• The letter-string "RAALAL" means:
o Turn right
o Advance twice
o Turn left
o Advance once
o Turn left yet again
• Say a robot starts at {7, 3} facing north. Then running this stream of
instructions should leave it at {9, 4} facing west.
++ Your job
Write a function that takes a string of instructions as parameters and return an array [x, y] with last
coordinates of the robot.
Robot always starts in 0, 0 facing north.
Google Ruby Hash
It should be prototyped:
def run_robot(instructions)
Example 00:
Input: "RAALALL"
Output: {x: 2, y: -1, bearing: :west}
Example 01:
Input: "AAAA"
Output: {x: 0, y: -4, bearing: :north}
Example 02:
Input: "RAARA"
Output: {x: 2, y: 1, bearing: :south}
Example 03:
Input: ""
Output: {x: 0, y: 0: bearing: north}
