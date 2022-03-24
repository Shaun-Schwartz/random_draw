module RarityHelper
  def weighted_random_num
    # 1 = 4%, 2 = 12%, 3 = 20%, 4 = 28%, 5 = 36%
    a = rand(1..5)
    b = rand(1..5)
    [a, b].max
  end
end