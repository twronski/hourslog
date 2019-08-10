require 'rails/all'
CONFIG = YAML.load(File.read(File.expand_path('../application.yml', __FILE__)))
CONFIG.symbolize_keys!
puts CONFIG[:max_daily_extra_hours]*4
puts CONFIG.class