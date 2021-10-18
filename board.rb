require 'ostruct'
require 'pry-byebug'
class Board

  MIN_X_ = 16
  MIN_Y = 16
  MAX_X = 800
  MAX_Y = 800

  def size 
    OpenStruct.new(height: nearest_10('x'), width: nearest_10('y'))
  end

  def nearest_10(axis)
    raise 'axis argument must be x or y' unless ['X', 'Y', 'x', 'y'].include?(axis) 
    if axis.downcase == 'X'
      num = [*Board::MIN_X..Board::MAX_X].sample
      num.round(-1)
    else
      num = [*Board::MIN_Y..Board::MAX_Y].sample
      num.round(-1)
    end
  end
end

p Board.new.size