require 'pry-byebug'

class LexiPerms

  def initialize(limit, selector)
    @selector = selector.to_i - 1
    @nums = (0..limit.to_i).to_a
  end

  def answer
    @nums.permutation.to_a[@selector].inject(""){|str, x| str << x.to_s}.to_i
  end
end

puts "enter a limit, then the \# you want to get"
ceiling = gets.strip
selector = gets.strip
puts "crunching numbers now"
puts LexiPerms.new(ceiling, selector).answer