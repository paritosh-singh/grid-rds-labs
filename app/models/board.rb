class Board
  @@board = []


  def self.initialize(size = 20)
    (1..size).each do |row|
      (1..size).each do |column|
        @@board << BoardCell.new(row, column, Pallete::DEFAULT_COLOR)
      end
    end
  end

end