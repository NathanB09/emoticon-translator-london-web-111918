require "yaml"
require "pry"
file_path = "./lib/emoticons.yml"
def load_library(file_path)
  YAML.load_file(file_path)
  binding.pry
end
load_library(file_path)

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
