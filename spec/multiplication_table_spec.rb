require 'multiplication_table'

describe MultiplicationTable do
  describe "#intialize" do
    let(:table) { MultiplicationTable.new(10)}

    it "creates an instance of MultiplicationTable" do
      expect(table).to be_a(MultiplicationTable)
    end

    it "initalizes the correct number of primes" do
      expect(table.primes.length).to equal(10)
    end
  end

  describe "#render_table" do
    let(:table) { MultiplicationTable.new(5) }
    it "should render the first row" do
      expect { table.render_table }.to output(/     2   3   5   7   11/).to_stdout
    end

    it "should render the first column and second row" do
      expect { table.render_table }.to output(/ 2   4   6  10  14   22/).to_stdout
    end
    it "should render the first column and third row" do
      expect { table.render_table }.to output(/ 3   6   9  15  21   33/).to_stdout
    end
    it "should render the first column and fourth row" do
      expect { table.render_table }.to output(/ 5  10  15  25  35   55/).to_stdout
    end
    it "should render the first column and fifth row" do
      expect { table.render_table }.to output(/ 7  14  21  35  49   77/).to_stdout
    end
    it "should render the first column and sixth row" do
      expect { table.render_table }.to output(/11  22  33  55  77  121/).to_stdout
    end
  end
end
