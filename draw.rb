require 'chunky_png'
require_relative 'colors'
require_relative 'constants'

class Draw
    include Constants

    x_location = lambda { rand(0..MAX_WIDTH) }
    y_location = lambda { rand(0..MAX_HEIGHT) }
    radius = lambda { rand(10..MAX_HEIGHT/2) }
    random_color = lambda { ChunkyPNG::Color.from_hex(Colors.random_color) }
    png = ChunkyPNG::Image.new(Constants::MAX_WIDTH, Constants::MAX_HEIGHT, random_color.call)
    rand(0..MAX_SHAPES).times do
        png.circle(x_location.call, y_location.call, radius.call, random_color.call, random_color.call)
    end
    rand(0..MAX_SHAPES).times do
        first_x = x_location.call
        first_y = y_location.call
        second_x = first_x + rand(10..MAX_WIDTH/2)
        second_y = first_x + rand(10..MAX_HEIGHT/2)
        png.rect(first_x, first_y, second_x, second_y, random_color.call, random_color.call)
    end


    png.save("images/test#{Time.now.strftime("%H : %M : %S")}.png")
end
