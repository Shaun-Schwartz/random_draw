#!/usr/bin/env ruby

require 'chunky_png'
require_relative 'chunky_png_extensions'
require_relative 'colors'
require_relative 'constants'

class DrawRandom
  include Constants
  attr_reader :colors
  attr_accessor :png

  def initialize
    @colors = Colors.new
  end

  def x_location
    rand(0..MAX_WIDTH)
  end

  def y_location
    rand(0..MAX_HEIGHT)
  end

  def radius
    rand(10..MAX_HEIGHT/4)
  end

  def triangle_size
    rand(200..MAX_WIDTH/2)
  end

  def random_color
    ChunkyPNG::Color.from_hex(colors.random_color)
  end

  def draw_circles
    rand(0..MAX_SHAPES).times do
      x = x_location
      y = y_location
      border_and_fill_color = random_color
      @png.circle(x, y, radius, border_and_fill_color, border_and_fill_color)
    end
  end

  def draw_rectangles
    rand(0..MAX_SHAPES).times do
      first_x = x_location
      first_y = y_location
      second_x = first_x + rand(10..MAX_WIDTH/4)
      second_y = first_x + rand(10..MAX_HEIGHT/4)
      border_and_fill_color = random_color
      @png.rect(
        first_x, first_y, second_x, second_y, border_and_fill_color, border_and_fill_color
      )
    end
  end

  def draw_triangles
    rand(0..MAX_SHAPES).times do
      x = x_location
      border_and_fill_color = random_color
      @png.triangle(x, triangle_size, border_and_fill_color, border_and_fill_color)
    end
  end

  def call
    @png = ChunkyPNG::Image.new(Constants::MAX_WIDTH, Constants::MAX_HEIGHT, random_color)
    draw_circles
    draw_rectangles
    draw_triangles
    @png.save("images/random_#{Time.now.strftime("%H_%M_%S")}.png")
  end
end

DrawRandom.new.call