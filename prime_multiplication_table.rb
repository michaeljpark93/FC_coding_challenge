require_relative "lib/multiplication_table"

if $PROGRAM_NAME == __FILE__
  print "Welcome to the primes multiplication table!\n"
  print "Please enter the number of primes you want:\n"
  begin
    num = gets.chomp.to_i
    raise print "Please enter a number greater than 0\n" if num < 1
  rescue
    retry
  end
  
  table = MultiplicationTable.new(num)
  table.render_table
end
