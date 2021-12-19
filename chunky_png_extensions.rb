require_relative 'constants'

module ChunkyPNG
  class Canvas
    module Drawing
      include Constants
      def triangle(x0, length, stroke_color, fill_color)
          half = length / 2
          y = rand(0..MAX_HEIGHT)
          p1 = [y, x0]
          p2 = [y - half, x0 - half]
          p3 = [y - length, x0]
          polygon([p1, p2, p3], stroke_color, fill_color)
      end
    end
  end
end