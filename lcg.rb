#CODEWARS

class LCG
  @@a = 2
  @@c = 3
  @@m = 10

  def initialize(seed)
    @seed = seed
  end

  def random
    rand_num = (@@a * @seed + @@c) % 10
    @seed = rand_num
    p rand_num / 10.0
  end

end
  practice = LCG.new(5)
  practice.random
  practice.random
  practice.random
  practice.random

  # LCG.random()

  # initialize the generator with seed = 5
# LCG(5)
#
# # first random number (seed = 5)
# LCG.random() = 0.3      # (2 * 5 + 3) mod 10 = 3 --> return 0.3
#
# # next random number (seed = 3)
# LCG.random() = 0.9      # (2 * 3 + 3) mod 10 = 9 --> return 0.9
#
# # next random number (seed = 9)
# LCG.random() = 0.1
#
# # next random number (seed = 1)
# LCG.random() = 0.5
