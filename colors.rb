require_relative 'constants'
require_relative 'rarity'

class Colors
  include Rarity
  attr_accessor :colors_used

  def initialize
    @colors_used = []
  end

  YELLOWS = [
    {bright_golden_yellow: '#FFA400', rarity: SUPER_RARE_RARITY},
    {ripe_lemon: '#F7CA18', rarity: RARE_RARITY},
    {ripe_lemon: '#F7CA18', rarity: RARE_RARITY},
    {ripe_lemon: '#F7CA18', rarity: RARE_RARITY},
    {gamboge: '#FFB61E', rarity: RARE_RARITY},
    {cream_can: '#F5D76E', rarity: COMMON_RARITY},
    {corn_colored: '#FAA945', rarity: COMMON_RARITY},
    {egg_colored: '#FFA631', rarity: COMMON_RARITY},
    {floral_leaf_colored: '#FFB94E', rarity: VERY_COMMON_RARITY},
    {saffron: '#F4D03F', rarity: VERY_COMMON_RARITY},
    {sumac_dyed: '#E08A1E', rarity: VERY_COMMON_RARITY},
    {ecstasy: '#F9690E', rarity: VERY_COMMON_RARITY},
    {lightning_yellow: '#F5AB35', rarity: SUPER_COMMON_RARITY},
    {japanese_triandra_grass: '#E2B13C', rarity: SUPER_COMMON_RARITY},
    {amur_cork_tree: '#F3C13A', rarity: SUPER_COMMON_RARITY},
    {patrina_flowers: '#D9B611', rarity: SUPER_COMMON_RARITY},
    {golden_fallen_leaves: '#E29C45', rarity: SUPER_COMMON_RARITY}
  ]

  GREENS = [
    {green_three: '#00CD00', rarity: SUPER_RARE_RARITY},
    {observatory: '#049372', rarity: RARE_RARITY},
    {turquoise: '#36D7B7', rarity: RARE_RARITY},
    {mountain_meadow: '#16A085', rarity: COMMON_RARITY},
    {free_speech_aquamarine: '#03A678', rarity: COMMON_RARITY},
    {eucalyptus: '#26A65B', rarity: COMMON_RARITY},
    {patina: '#407A52', rarity: VERY_COMMON_RARITY},
    {jungle_green: '#26C281', rarity: VERY_COMMON_RARITY},
    {jungle_green: '#2ABB9B', rarity: VERY_COMMON_RARITY},
    {ocean_green: '#4DAF7C', rarity: VERY_COMMON_RARITY},
    {gossip: '#87D37C', rarity: SUPER_COMMON_RARITY},
    {siskin_sprout_yellow: '#7A942E', rarity: SUPER_COMMON_RARITY},
    {young_green_onion: '#8DB255', rarity: SUPER_COMMON_RARITY},
    {fresh_onion: '#5B8930', rarity: SUPER_COMMON_RARITY},
    {young_bamboo: '#6B9362', rarity: SUPER_COMMON_RARITY}
  ]

  BLUES = [
    {aqua: '#00FFFF', rarity: SUPER_RARE_RARITY},
    {medium_blue: '#0000CD', rarity: RARE_RARITY},
    {dark_blue: '#00008B', rarity: RARE_RARITY},
    {royal_blue: '#4169E1', rarity: COMMON_RARITY},
    {blue: '#0000FF', rarity: COMMON_RARITY},
    {midnight_blue: '#191970', rarity: COMMON_RARITY},
    {cornflower_blue: '#6495ED', rarity: VERY_COMMON_RARITY},
    {medium_turquoise: '#48D1CC', rarity: VERY_COMMON_RARITY},
    {deepsky_blue: '#00BFFF', rarity: VERY_COMMON_RARITY},
    {dodger_blue: '#1E90FF', rarity: VERY_COMMON_RARITY},
    {cadet_blue: '#5F9EA0', rarity: SUPER_COMMON_RARITY},
    {steel_blue: '#4682B4', rarity: SUPER_COMMON_RARITY},
    {light_blue: '#ADD8E6', rarity: SUPER_COMMON_RARITY},
    {sky_blue: '#87CEEB', rarity: SUPER_COMMON_RARITY},
    {pale_turquoise: '#AFEEEE', rarity: SUPER_COMMON_RARITY}
  ]

  PURPLES = [
    {fuchsia: '#FF00FF', rarity: SUPER_RARE_RARITY},
    {purple: '#800080', rarity: RARE_RARITY},
    {indigo: '#4B0082', rarity: RARE_RARITY},
    {medium_orchid: '#BA55D3', rarity: COMMON_RARITY},
    {dark_violet: '#9400D3', rarity: COMMON_RARITY},
    {blue_violet: '#8A2BE2', rarity: COMMON_RARITY},
    {medium_purple: '#9370DB', rarity: VERY_COMMON_RARITY},
    {medium_slate_blue: '#7B68EE', rarity: VERY_COMMON_RARITY},
    {slate_blue: '#6A5ACD', rarity: VERY_COMMON_RARITY},
    {rebecca_purple: '#663399', rarity: VERY_COMMON_RARITY},
    {darkslate_blue: '#483D8B', rarity: SUPER_COMMON_RARITY},
    {thistle: '#D8BFD8', rarity: SUPER_COMMON_RARITY},
    {plum: '#DDA0DD', rarity: SUPER_COMMON_RARITY},
    {orchid: '#DA70D6', rarity: SUPER_COMMON_RARITY},
    {violet: '#EE82EE', rarity: SUPER_COMMON_RARITY}
  ]

  REDS = [
    {monza: '#CF000F', rarity: SUPER_RARE_RARITY},
    {radical_red_pink: '#F62459', rarity: RARE_RARITY},
    {pomegranate: '#F22613', rarity: RARE_RARITY},
    {medium_crimson: '#C93756', rarity: COMMON_RARITY},
    {foreign_crimson: '#C91F37', rarity: COMMON_RARITY},
    {peach_pink: '#F47983', rarity: COMMON_RARITY},
    {one_kin_dye: '#F08F90', rarity: VERY_COMMON_RARITY},
    {pure_crimson: '#C3272B', rarity: VERY_COMMON_RARITY},
    {true_red: '#8F1D21', rarity: VERY_COMMON_RARITY},
    {chestnut_rose: '#D24D57', rarity: VERY_COMMON_RARITY},
    {red_orange: '#DC3023', rarity: SUPER_COMMON_RARITY},
    {red_plum: '#DB5A6B', rarity: SUPER_COMMON_RARITY},
    {cherry_blossom: '#FCC9B9', rarity: SUPER_COMMON_RARITY},
    {washed_out_crimson: '#FFB3A7', rarity: SUPER_COMMON_RARITY},
    {ibis_wing: '#F58F84', rarity: SUPER_COMMON_RARITY},
  ]

  def random_color
    rarity = rarityed_random_num
    all = YELLOWS + GREENS + BLUES + PURPLES + REDS
    matched_colors = all.select { |c| c[:rarity] == rarity }
    color_hash = matched_colors.sample
    @colors_used << color_hash
    color_hash[color_hash.keys.first]
  end

  def rarityed_random_num
    # 1 = 4%, 2 = 12%, 3 = 20%, 4 = 28%, 5 = 36%
    a = rand(1..5)
    b = rand(1..5)
    [a, b].max
  end
end