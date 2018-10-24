class Cell

  attr_reader :row, :column, :color, :updated_by, :updated_at

  def initialize row, column, color
    @row = row
    @column = column
    @color = Pallete::DEFAULT_COLOR
  end


  def update_color color, updated_by
    @color = color
    @updated_by = updated_by
    @updated_at = Time.now
  end

end