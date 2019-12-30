# frozen_string_literal: true

require 'vacuum'

describe Vacuum do

  describe '#take_input'do
    it 'takes info from input.txt file and converts it to an array' do
      Vacuum.new
      expect(subject.take_input).to eq ["5", "5", "1", "2", "1", "0", "2", "2", "2", "3", "NNESEESWNWW"]
    end
  end
  
  describe '#create_grid' do
    it 'should take the grid measurements and return a grid' do
      Vacuum.new
      expect(subject.create_grid(5, 5)).to eq [[0, 1, 2, 3, 4, 5], [0, 1, 2, 3, 4, 5], [0, 1, 2, 3, 4, 5], [0, 1, 2, 3, 4, 5], [0, 1, 2, 3, 4, 5], [0, 1, 2, 3, 4, 5], [0, 0, 0, 0, 0, 0], [1, 1, 1, 1, 1, 1], [2, 2, 2, 2, 2, 2], [3, 3, 3, 3, 3, 3], [4, 4, 4, 4, 4, 4], [5, 5, 5, 5, 5, 5]]
    end
  end

  describe '#set_starting_point' do
    it 'sets the vacuum starting point according to input' do
      Vacuum.new
      expect(subject.set_starting_point(1, 2)).to eq '1,2'
    end
  end
end
