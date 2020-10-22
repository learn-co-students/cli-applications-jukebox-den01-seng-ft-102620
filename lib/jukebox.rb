require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "/- help : displays this help message/"
  puts "/- list : displays a list of songs you can play/"
  puts "/- play : lets you choose a song to play/"
  puts "/- exit : exits this programs/"
end

def list(songs)
  i = 0 
  while i < songs.length 
    puts "#{i + 1}. #{songs[i]}"
    i += 1 
  end 
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  number = user_input.to_i - 1 
  if (number >= 0 && number <= songs.length - 1)
    puts "Playing #{songs[number]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs) 
  puts "Please enter a command:"
  input = gets.strip
  if input == 'exit'
    exit_jukebox
  end
  if input == "help"
    help
  elsif input == "list"
    list(songs)
  elsif input == "play"
    play(songs)
  end
end 

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)
