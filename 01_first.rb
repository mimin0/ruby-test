#puts "Hello world"
#puts "set the numbers:"
#number = gets
#puts "Your naumber is #{number}"
#puts number.



message = <<HERE
        This script will be installed the following:
- mc;
HERE

name = "Vasya"
puts name.class

puts (message)

puts ("Do you agree with it? y/n")
answer = gets

puts "your answer is: " + answer
puts answer.class

if answer == 'y'
  exec("echo 'install....'")
#elsif answer == "n"
# exec("echo 'installation canceled'")
end

name = ["Bob", "Yan"]
name.each {|name| puts "Hello " + name}
