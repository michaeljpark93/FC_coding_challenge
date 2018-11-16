require 'primes'

describe Primes do
  describe "#get_primes" do
    let(:primes) { Primes.get_primes(10) }

    it "returns the first n prime numbers in an array" do
      expect(primes.length).to equal(10)
      expect(primes).to match_array([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end

    it "returns an empty array if n is 0 or negative" do
      expect(Primes.get_primes(0)).to be_empty
      expect(Primes.get_primes(-3)).to be_empty
    end
  end
end
