class Rook < Piece
    include Slideable

    def initialize
        super
    end

    def symbol
        "♜"
    end

    def move_dirs
        horizontal_dirs
    end

end
