#!/usr/bin/env ruby

require 'chunky_png'
require_relative 'chunky_png_extensions'
require_relative 'colors'
require_relative 'constants'
require 'pry-byebug'

class DrawRandom < Colors
  include Constants
  attr_accessor :colors

  def initialize
    @colors = Colors.new
  end

  def call
    x_location = lambda { rand(0..MAX_WIDTH) }
    y_location = lambda { rand(0..MAX_HEIGHT) }
    radius = lambda { rand(10..MAX_HEIGHT/4) }
    random_color = lambda { ChunkyPNG::Color.from_hex(colors.random_color) }

    png = ChunkyPNG::Image.new(Constants::MAX_WIDTH, Constants::MAX_HEIGHT, random_color.call)

    rand(0..MAX_SHAPES).times do
      x = x_location.call
      y = y_location.call
      puts x; puts y
      png.circle(x, y, radius.call, random_color.call, random_color.call)
    end

    rand(0..MAX_SHAPES).times do
        first_x = x_location.call
        first_y = y_location.call
        second_x = first_x + rand(10..MAX_WIDTH/4)
        second_y = first_x + rand(10..MAX_HEIGHT/4)
        png.rect(first_x, first_y, second_x, second_y, random_color.call, random_color.call)
    end

    rand(0..MAX_SHAPES).times do
      png.triangle(512, 200, random_color.call, random_color.call)
    end

    png.save("images/test#{Time.now.strftime("%H:%M:%S")}.png")
  end
end

DrawRandom.new.call