class Vacuum

  attr_reader :create_grid

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
end
