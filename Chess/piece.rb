class Piece
    attr_accessor :color
    def initialize(pos)
        @color = :white
        @board = Board.new
        @pos = pos
    end

    def to_s
        
    end

    def empty

    end

    def valid_moves

    end


end