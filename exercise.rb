class Exercise

  def self.marklar(str)
    str.split(/\b/).map do |part|
      if part.match?(/^[a-zA-Z]+$/) && part.length > 4
        part[0] =~ /[A-Z]/ ? "Marklar" : "marklar"
      else
        part
      end
    end.join
  end

  def self.even_fibonacci(nth)
    fib = [0, 1]
    (2...nth).each do |i|
      fib << fib[i-1] + fib[i-2]
    end

    fib.select { |num| num.even? }.sum
  end

end
