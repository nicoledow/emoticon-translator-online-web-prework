# require modules here
require "yaml"
require "pry"

def load_library(file)
  emoticon_library = YAML.load_file(file)
  
  dictionary = {"get_emoticon" => {}, "get_meaning" => {}}
  
  emoticon_library.each do |emoji_title, faces|
    dictionary["get_meaning"][faces] => emoji_title
    
  end
  
  dictionary
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end