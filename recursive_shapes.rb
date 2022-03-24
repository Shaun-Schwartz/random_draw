#!/usr/bin/env ruby

require 'chunky_png'
require_relative 'colors'
require_relative 'constants'
require_relative 'file_name_helper'

class RecursiveShapes
  include Constants, FileNameHelper
  attr_reader :colors
  attr_accessor :png

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
    draw_squares if @shape == 'square'
    draw_circles if @shape == 'circle'
    @png.save("images/#{file_name}.png")
  end

  def draw_squares
    distance_from_edge = 100
    4.times do
      left_x = distance_from_edge
      left_y = MAX_HEIGHT - distance_from_edge
      right_x = MAX_WIDTH - distance_from_edge
      right_y = distance_from_edge
      @png.rect(
        left_x, left_y, right_x, right_y, stroke_color = random_color, stroke_color)
      distance_from_edge += 100
    end
  end

  def draw_circles
    center_x = MAX_WIDTH / 2
    center_y = MAX_HEIGHT / 2
    distance_from_edge = 100
    radius = MAX_WIDTH / 2
    4.times do
      @png.circle(
        center_x, center_y, radius, stroke_color = random_color, stroke_color
      )
      @png.circle(
        center_x, center_y, radius - 100, stroke_color = random_color, stroke_color
      )
        radius -= 100
    end
  end
end

RecursiveShapes.new.draw