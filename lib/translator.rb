require "yaml"
require "pry"

def load_library(file)
  emoticon_library = YAML.load_file(file)
  
  dictionary = {"get_emoticon" => {}, "get_meaning" => {}}
  
  #iterates through emoticon_library and sets japanese emoticons as keys in the dictionary with their meanings as the values
  emoticon_library.each do |emoji_title, faces_array|
    faces_array.each do |face|
      dictionary["get_meaning"][face] = emoji_title
    end
  end
  
  #iterates through emoticon_library and sets english emoticons as keys in dictionary with the japanese emoticon as the values
  emoticon_library.each do |emoji_title, faces_array|
    dictionary["get_emoticon"][faces_array[0]] = faces_array[1]
  end
  dictionary
end

def get_japanese_emoticon(yaml_file, emoticon)
  emoticon_dictionary = load_library(yaml_file)
  
  if emoticon_dictionary["get_emoticon"].has_key?(emoticon)
    emoticon_dictionary["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(yaml_file, emoticon)
  emoticon_dictionary = load_library(yaml_file)
  
  if emoticon_dictionary["get_meaning"].has_key?(emoticon)
    emoticon_dictionary["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  
end