require 'chunky_png'
require_relative 'colors'
require_relative 'constants'
require_relative 'rarity'

class RecursiveSquares < Colors
  include Constants, Rarity
  attr_accessor :colors

  def initialize
    @colors = Colors.new
  end

  def draw
    random_color = lambda { ChunkyPNG::Color.from_hex(colors.random_color) }

    png = ChunkyPNG::Image.new(MAX_WIDTH, MAX_HEIGHT, random_color.call)
    png.rect(100, MAX_HEIGHT - 100, MAX_WIDTH - 100, 100, stroke_color = random_color.call, stroke_color)
    png.rect(200, MAX_HEIGHT - 200, MAX_WIDTH - 200, 200, stroke_color = random_color.call, stroke_color)
    png.rect(300, MAX_HEIGHT - 300, MAX_WIDTH - 300, 300, stroke_color = random_color.call, stroke_color)
    png.rect(400, MAX_HEIGHT - 400, MAX_WIDTH - 400, 400, stroke_color = random_color.call, stroke_color)
    file_name = save_name
    png.save("images/#{save_name}.png")
  end

  def save_name
    name = ""
    colors.colors_used.each do |c|
      color_name = c.keys.first.to_s.gsub('_', '-')
      name.concat("#{color_name} rarity=#{c[:rarity]} | ")
    end
    name.chomp(" | ")
  end
end

RecursiveSquares.new.draw