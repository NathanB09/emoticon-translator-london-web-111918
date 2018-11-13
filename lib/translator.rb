require "yaml"
require "pry"
file_path = "./lib/emoticons.yml"
def load_library(file_path)
  emotes = YAML.load_file(file_path)
  emotes.each_with_object({}) do |(meaning, emote_array), arranged|
    arranged["get_meaning"] ||= {}
    arranged["get_emoticon"] ||= {}
    arranged["get_meaning"][emote_array[1]] = meaning
    arranged["get_emoticon"][emote_array[0]] = emote_array[1]
  end
end

def get_japanese_emoticon(file_path, eng_emoticon)
  load_library(file_path).each do |get_keys, emote_hash|
    emote_hash.each do |eng_emote, jap_emote|
      eng_emote == eng_emoticon ? return jap_emote : nil
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end
