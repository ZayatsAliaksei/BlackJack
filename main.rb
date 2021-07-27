require_relative 'deck'
require_relative 'player'
require_relative 'interface'
require_relative 'dealer'
require_relative 'card_template'
require 'colorize'

splash = <<EOS
88          88                       88            88                       88
88          88                       88            ""                       88
88          88                       88                                     88
88,dPPYba,  88 ,adPPYYba,  ,adPPYba, 88   ,d8      88 ,adPPYYba,  ,adPPYba, 88   ,d8
88P'    "8a 88 ""     `Y8 a8"     "" 88 ,a8"       88 ""     `Y8 a8"     "" 88 ,a8"
88       d8 88 ,adPPPPP88 8b         8888[         88 ,adPPPPP88 8b         8888[
88b,   ,a8" 88 88,    ,88 "8a,   ,aa 88`"Yba,      88 88,    ,88 "8a,   ,aa 88`"Yba,
8Y"Ybbd8"'  88 `"8bbdP"Y8  `"Ybbd8"' 88   `Y8a     88 `"8bbdP"Y8  `"Ybbd8"' 88   `Y8a
                                                  ,88
                                               888P"
EOS
puts splash.green

game = Interface.new
game.game_start