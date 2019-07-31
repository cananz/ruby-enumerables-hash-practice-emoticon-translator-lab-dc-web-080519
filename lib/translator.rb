# require modules here
require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)

dictionary = {
  "get_meaning" => {},
  "get_emoticon" => {}
}
emoticons.each do |meaning, icons|
dictionary["get_meaning"][icons[1]] = meaning
dictionary["get_emoticon"][icons[0]] = emoticons[meaning][1]
end
dictionary
end
################################

def get_japanese_emoticon(file, emoticon)
  load_library(file)
  if dictionary["get_emoticon"].has_key?(emoticon)
  dictionary["get_emoticon"][icons]
  end
end
################################

def get_english_meaning
  # code goes here
end