require "tty-prompt"

prompt = TTY::Prompt.new
input_name = prompt.ask("What is your name?", default: ENV["USER"])

if input_name == "Michelle"
  puts "Hi Michelle"
else
  puts "THAT'S MY PURSE! I DON'T KNOW YOU"
end

prompt = TTY::Prompt.new
input_yes = prompt.yes?("Is it a sandwhich?")
if input_yes
  puts "a hotdog is a sandwhich"
else
  puts "Still a sandwhich"
end
