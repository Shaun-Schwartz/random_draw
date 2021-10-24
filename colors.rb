require 'ostruct'
require 'pry-byebug'

module Colors

  YELLOWS = [
    {bright_golden_yellow: '#FFA400', weight: 1},
    {ripe_lemon: '#F7CA18', weight: 2},
    {gamboge: '#FFB61E', weight: 2},
    {cream_can: '#F5D76E', weight: 3},
    {corn_colored: '#FAA945', weight: 3},
    {egg_colored: '#FFA631', weight: 3},
    {floral_leaf_colored: '#FFB94E', weight: 4},
    {saffron: '#F4D03F', weight: 4},
    {sumac_dyed: '#E08A1E', weight: 4},
    {ecstasy: '#F9690E', weight: 4},
    {lightning_yellow: '#F5AB35', weight: 5},
    {japanese_triandra_grass: '#E2B13C', weight: 5},
    {amur_cork_tree: '#F3C13A', weight: 5},
    {patrina_flowers: '#D9B611', weight: 5},
    {golden_fallen_leaves: '#E29C45', weight: 5}
  ]

  GREENS = [
    {green_three: '#00CD00', weight: 1},
    {observatory: '#049372', weight: 2},
    {turquoise: '#36D7B7', weight: 2},
    {mountain_medow: '#16A085', weight: 3},
    {free_speech_aquamarine: '#03A678', weight: 3},
    {eucalyptus: '#26A65B', weight: 3},
    {patina: '#407A52', weight: 4},
    {jungle_green: '#26C281', weight: 4},
    {jungle_green: '#2ABB9B', weight: 4},
    {ocean_green: '#4DAF7C', weight: 4},
    {gossip: '#87D37C', weight: 5},
    {siskin_sprout_yellow: '#7A942E', weight: 5},
    {young_green_onion: '#8DB255', weight: 5},
    {fresh_onion: '#5B8930', weight: 5},
    {young_bamboo: '#6B9362', weight: 5}
  ]

  BLUES = [
    {aqua: '#00FFFF', weight: 1},
    {mediumblue: '#0000CD', weight: 2},
    {darkblue: '#00008B', weight: 2},
    {royalblue: '#4169E1', weight: 3},
    {blue: '#0000FF', weight: 3},
    {midnightblue: '#191970', weight: 3},
    {cornflowerblue: '#6495ED', weight: 4},
    {mediumTurquoise: '#48D1CC', weight: 4},
    {deepskyblue: '#00BFFF', weight: 4},
    {dodgerblue: '#1E90FF', weight: 4},
    {cadetblue: '#5F9EA0', weight: 5},
    {steelblue: '#4682B4', weight: 5},
    {lightblue: '#ADD8E6', weight: 5},
    {skyblue: '#87CEEB', weight: 5},
    {paleTurquoise: '#AFEEEE', weight: 5}
  ]

  PURPLES = [
    {fuchsia: '#FF00FF', weight: 1},
    {purple: '#800080', weight: 2},
    {indigo: '#4B0082', weight: 2},
    {mediumorchid: '#BA55D3', weight: 3},
    {darkviolet: '#9400D3', weight: 3},
    {blueviolet: '#8A2BE2', weight: 3},
    {mediumpurple: '#9370DB', weight: 4},
    {mediumslateblue: '#7B68EE', weight: 4},
    {slateblue: '#6A5ACD', weight: 4},
    {rebeccapurple: '#663399', weight: 4},
    {darkslateblue: '#483D8B', weight: 5},
    {thistle: '#D8BFD8', weight: 5},
    {plum: '#DDA0DD', weight: 5},
    {orchid: '#DA70D6', weight: 5},
    {violet: '#EE82EE', weight: 5}
  ]

  REDS = [
    {monza: '#CF000F', weight: 1},
    {radical_red_pink: '#F62459', weight: 2},
    {pomegranate: '#F22613', weight: 2},
    {medium_crimson: '#C93756', weight: 3},
    {foreign_crimson: '#C91F37', weight: 3},
    {peach_pink: '#F47983', weight: 3},
    {one_kin_dye: '#F08F90', weight: 4},
    {pure_crimson: '#C3272B', weight: 4},
    {true_red: '#8F1D21', weight: 4},
    {chestnut_rose: '#D24D57', weight: 4},
    {red_orange: '#DC3023', weight: 5},
    {red_plum: '#DB5A6B', weight: 5},
    {cherry_blossom: '#FCC9B9', weight: 5},
    {washed_out_crimson: '#FFB3A7', weight: 5},
    {ibis_wing: '#F58F84', weight: 5},
  ]

  def self.random_color
    weight = self.weighted_random_num
    all = YELLOWS + GREENS + BLUES + PURPLES
    matched_colors = all.select { |c| c[:weight] == weight }
    matched_colors.sample
  end

  def self.weighted_random_num
    # 1 = 4%, 2 = 12%, 3 = 20%, 4 = 28%, 5 = 36%
    a = rand(1..5)
    b = rand(1..5)
    [a, b].max
  end
end