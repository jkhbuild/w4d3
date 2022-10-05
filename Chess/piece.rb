class Piece
    attr_accessor :color
    def initialize(pos)
        @color = :white
        @board = Board.new
        @pos = pos
    end

    def symbol

    end

    def to_s
        self.symbol 
    end

    def empty

    end

    def valid_moves

    end


end
