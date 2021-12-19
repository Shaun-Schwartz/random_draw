require_relative 'constants.rb'

module Rarity
  include Constants

  def self.lowest_rarity(color_hash_array)
    lowest_rarity = SUPER_COMMON_RARITY
    rarest = []
    color_hash_array.each do |color|
      if self.rarer?(color[:rarity], lowest_rarity)
        rarest = []
        lowest_rarity = color[:rarity]
        rarest << color
      end
      if self.same_rarity?(color[:rarity], lowest_rarity)
        rarest << color
      end
    end
    rarest
  end

  def self.rarer?(current_rarity, lowest_rarity)
    current_rarity < lowest_rarity
  end

  def self.same_rarity?(current_rarity, lowest_rarity)
    current_rarity == lowest_rarity
  end
end