module FileNameHelper
  def file_name
    name = ""
    colors.colors_used.each do |c|
      color_name = c.keys.first.to_s.gsub('_', '-')
      name.concat("#{color_name} rarity=#{c[:rarity]} | ")
    end
    name.chomp(" | ")
  end
end