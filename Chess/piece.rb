class Piece
    attr_accessor :color
    def initialize
        @color = :white
        @board = Board.new
        @pos = nil
    end

    def symbol
        raise "no symbol"
    end

    def to_s
        self.symbol 
    end

    def empty

    end

    def valid_moves

    end


end
