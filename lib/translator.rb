require "yaml"
require "pry"
file_path = "./lib/emoticons.yml"
def load_library(file_path)
  emotes = YAML.load_file(file_path)
  loaded = emotes.each_with_object({}) do |(meaning, emote_array), loaded|
    loaded["get_meaning"] ||= {}
    loaded["get_emoticon"] ||= {}
    binding.pry
    loaded["get_meaning"][emote_array[1]] = meaning
    loaded["get_emoticon"][emote_array[0]] = emote_array[1]
  end
end
load_library(file_path)
def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
