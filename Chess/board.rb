require "byebug"
class Board
    attr_reader :board

    def initialize
        @board = Array.new(8) { Array.new(8) } 
    end

    def [](pos)
        x, y = pos
        @board[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @board[x][y] = val
    end

    def move_piece(start_pos, end_pos)
        raise "invalid position" if !end_pos.all? { |cord| cord.between?(0, 7)}

        raise "position is empty" if self[start_pos].nil?
        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]

    end

    def fill_board #for testing only
        self.board.map.with_index do |row, i|
            if !i.between?(2, 5)
                (0..7).each do |j|
                    row[j] = :P
                end
            end
        end
    end

    def print_board # for testing only
        @board.each do |row|
            puts row.join(" ")
        end
    end


end


b = Board.new
b.fill_board
b.print_board
b.move_piece([1,1], [3,2])
b.print_board
b.move_piece([4,4], [4,5])
