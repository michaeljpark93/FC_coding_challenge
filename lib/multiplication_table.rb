require_relative 'primes'

class MultiplicationTable
  attr_accessor :primes, :table, :spaces

  def initialize(n=10)
    @primes = Primes.get_primes(n)
    @table = Array.new(n) { Array.new(n) }
    @spaces = {}
  end

  def render_table
    generate_table
    generate_spaces

    table.map do |rows|
      row = ""
      rows.each_with_index do |num, idx|
        padding = spaces[idx] - num.to_s.length
        padding.times { row += " " }
        row += "#{num}  "
      end
      print "#{row}\n"
    end
  end

  private
  def generate_table
    primes.each_with_index do |num1, i|
      primes.each_with_index do |num2, j|
        product = num1 * num2
        #Multiplication table has overlap in products - will reduce the runtime of the population of the table
        table[i][j] = product if table[i][j].nil?
        table[j][i] = product if table[j][i].nil?
      end
    end
    #Adds the original prime numbers to the first column and row of the table
    primes.each_with_index { |num, idx| self.table[idx].unshift(num) }
    self.table.unshift([nil].concat(primes))
  end

  def generate_spaces
    #Created this private method to ensure that all columns aligned appropriated when printed in the console
    table.last.each_with_index do |num, col|
      spaces[col] = num.to_s.length
    end
  end
end