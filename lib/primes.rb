class Primes
  def self.get_primes(n = 10)
    return [] if n < 1
    primes = []
    num = 2

    until primes.length == n
      primes.push(num) if is_prime?(num)
      num += 1
    end

    primes
  end

  private

  def self.is_prime?(num)
    return false if num <= 1
    (2...num).all? { |el| num % el != 0 }
  end
end
