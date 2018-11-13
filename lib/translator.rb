require "yaml"
require "pry"
file_path = "./lib/emoticons.yml"
def load_library(file_path)
  emotes = YAML.load_file(file_path)
  loaded = emotes.each_with_object({}) do |(meaning, emote_array), loaded|
    emote_array.each do |emote|
      loaded["get_meaning"] ||= {}
      loaded["get_emoticon"] ||= {}
      loaded["get_meaning"][emote[1]] = meaning
      loaded["get_emoticon"][emote[0]] = emote[1]
    end
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
