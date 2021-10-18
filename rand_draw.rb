require 'chunky_png'
require 'pry-byebug'
require_relative 'colors'

class RandDraw
    include Colors
    png = ChunkyPNG::Image.new(1024, 1024, Colors.constants.sample)
    png.rect(1, 1, 100, 100, Colors.constants.sample, Colors.constants.sample )

    png.save("images/test#{Time.now.strftime("%H %M %S")}.png")
end