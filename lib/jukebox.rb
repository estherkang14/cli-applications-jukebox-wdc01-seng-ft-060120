require 'pry'

def song_list
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
end 


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 


def list(song_list) 
  song_list.each_with_index do |song_name, index|
    puts "#{index + 1}. #{song_name}"
  end 
end 
  
def play(song_list)
  puts "Please enter a song name or number:" 
  user_response = gets.strip 
 
  song_list.each_with_index do |song_name, index|
    if user_response.to_i-1 == index
      puts "Playing #{song_list[index]}"
    elsif user_response.to_s == song_name
      puts "Playing #{song_name}"
    else 
      puts "Invalid input, please try again"
    end 
  binding.pry 
  end 

 end 
  
def exit_jukebox
  puts "Goodbye"
end 

#def run 
 # help
 # list(song_list)
  play(song_list)
 # exit_jukebox
#end 
