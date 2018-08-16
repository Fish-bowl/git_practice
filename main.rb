

require 'colorize'
def puts_git(cmd)
  puts 'git #{cmd} -h'
  menu
end

def menu
  puts 'Main Menu'.colorize(:color => :dark_blue, :background => :light_red)
  puts '1: Enter Git command'.colorize:red
  puts '2: Exit'.colorize:red
  choice = gets.to_i
  case choice
  when 1
    puts 'Enter Git Command'.colorize:red
    puts_git(gets.strip)
    menu
  when 2
    exit(0)
  else 
    puts 'Invalid choice'.colorize:red
    menu
  end
end

menu