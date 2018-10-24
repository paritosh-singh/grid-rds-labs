class Board
  @@board = []


  def self.initialize(size = 20)
    (1..size).each do |row|
        @@board[row] = []
      (1..size).each do |column|
        @@board[row] << Cell.new(row, column, Pallete::DEFAULT_COLOR)
      end
    end
    return @@board
  end


  def self.get_board
    return @@board
  end


  def self.set_value row, column, color, updated_by    
    cell = (@@board[row] || [])[column]
    raise "Invalid cell_value" if cell.blank?
    cell.update_color color, updated_by
  end

end