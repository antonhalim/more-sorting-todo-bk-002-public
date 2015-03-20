describe "#sort_by_length" do
  
  it "sorts strings in an array by their length" do
    names = ["Stephan", "Blake", "Bo", "Ana", "Kaytie", "John"]
    sorted_names = ["Bo","Ana", "John", "Blake", "Kaytie", "Stephan"]
    expect(names.sort_by_length).to eq(sorted_names)
  end

  it "sorts alphabetically when there is a tie" do
    names = ["Stephan", "Blake", "Bo", "Ana", "Katie", "Jonny"]
    sorted_names = ["Bo","Ana", "Blake", "Jonny","Katie", "Stephan"]
    expect(names.sort_by_length).to eq(sorted_names)
  end

end

describe "#sort_by_remainder" do
  
  it "sorts numbers by the remainder when they are divided by 5" do
    numbers = [10, 29, 7, 6, 13]

    sorted_numbers = [10, 6, 7, 13, 29]
    # remainders   = [ 0, 1, 2,  3,  4]
    expect(numbers.sort_by_remainder(5)).to eq(sorted_numbers)
  end

  it "sorts numbers by the remainder when they are divided by 7" do
    numbers = [10, 7, 13, 50, 100]

    sorted_numbers = [7, 50, 100, 10, 13]
    # remainders   = [0,  1,   2,  3,  6]
    expect(numbers.sort_by_remainder(7)).to eq(sorted_numbers)
  end

  it "sorts numbers by the remainder when they are divided by 13" do
    numbers = [126, 76, 13001, 64, 13]
    
    sorted_numbers = [13, 13001, 126, 76, 64]
    # remainders =   [ 0,     1,   9, 11, 12]
    expect(numbers.sort_by_remainder(13)).to eq(sorted_numbers)
  end

end