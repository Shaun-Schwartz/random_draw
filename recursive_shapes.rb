#!/usr/bin/env ruby

require 'chunky_png'
require_relative 'colors'
require_relative 'constants'
require_relative 'file_name_helper'
require_relative 'rarity'

class RecursiveShapes < Colors
  include Constants, Rarity, FileNameHelper
  attr_accessor :colors, :png

  POSSIBLE_SHAPES = ['square', 'circle']

  def initialize
    @colors = Colors.new
    @shape = ARGV.first&.downcase || 'square'
    raise "shape can be one of #{POSSIBLE_SHAPES}" unless POSSIBLE_SHAPES.include? @shape
    @png = ChunkyPNG::Image.new(MAX_WIDTH, MAX_HEIGHT, random_color)
  end

  def random_color 
    ChunkyPNG::Color.from_hex(colors.random_color)
  end

  def draw
    if @shape == 'square'
      draw_squares
    end

    @png.save("images/#{file_name}.png")
  end

  def draw_squares
    distance_from_edge = 100
    4.times do
      @png.rect(
        distance_from_edge, MAX_HEIGHT - distance_from_edge, MAX_WIDTH - distance_from_edge, 
        distance_from_edge, stroke_color = random_color, stroke_color
      )
      distance_from_edge += 100
    end
  end
end

RecursiveShapes.new.draw