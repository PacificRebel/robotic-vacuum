# frozen_string_literal: true

# I am using the example input for this code at this early stage.

class Vacuum
  attr_reader :create_grid, :starting_point

  # this method takes the input from the input.txt file, converts the content
  # into a string and then into an array, so I can extract the information
  def take_input
    pp File.open('input.txt').read.split
  end

  def create_grid(x, y)
    horizontal_line = []
    horizontal_line << (0..x).to_a
    horizontal_lines = (horizontal_line.to_a * (y + 1))

    # the transpose method creates the vertical lines
    vertical_lines = horizontal_lines.transpose

    # here the grid pattern is created by combining the horizontal and
    # vertical lines
    # pp is used here to help visualise the grid when testing
    pp @grid_pattern = (horizontal_lines + vertical_lines)
  end

  # this sets the starting point according to instructions
  def set_starting_point(_x, _y)
    @starting_point = take_input[2, 2]
    @starting_point.join(',')
  end

  # this method increments the fourth element of the array by one
  def drive_north(direction)
    if direction == 'N'
      @new_vertical_position = take_input[3].to_i
      @new_vertical_position += 1
      @current_position = "#{take_input[2].to_i},#{@new_vertical_position}"
    end
  end

  # this method increments the third element of the array by one
  def drive_east(direction)
    if direction == 'E'
      @new_horizontal_position = take_input[2].to_i
      @new_horizontal_position += 1
      @current_position = "#{take_input[3].to_i},#{@new_horizontal_position}"
    end
  end
end
