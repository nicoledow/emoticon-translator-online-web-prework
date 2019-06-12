# require modules here
require "yaml"
require "pry"

def load_library(file)
  emoticon_library = YAML.load_file(file)
  
  dictionary = {"get_emoticon" => {}, "get_meaning" => {}}
  
  #iterates through emoticon_library and sets emoticons as keys with their meanings as values
  emoticon_library.each do |emoji_title, faces_array|
    faces_array.each do |face|
      dictionary["get_meaning"][face] = emoji_title
    end
  end
  
  emoticon_library.each do |emoji_title, faces_array|
    dictionary["get_emoticon"][emoji_title] = faces_array
  end
  
  dictionary
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end