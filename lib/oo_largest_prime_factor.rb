# Enter your object-oriented solution here!
class LargestPrimeFactor

  def initialize(num)
    @num = num
  end

  def number
    increasing_divider = 2
    i = (@num/increasing_divider).to_i
    highest_prime_factor = nil
    while i < @num
      if @num % i == 0 && is_prime?(i)
        highest_prime_factor = i
        break
      else
        increasing_divider += 1
        i = (@num/increasing_divider).to_i
      end
    end
    highest_prime_factor
  end

  def is_prime?(i)
     n = 2
       loop do
         if n == i
           return true
         elsif i % n == 0
           return false
         else
           n += 1
         end
       end
   end
end
